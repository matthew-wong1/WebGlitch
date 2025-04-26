import subprocess
import shutil
from pathlib import Path
import zlib
import json
import sys
import re

TESTS_TO_GEN = 1000
INVALID_TESTS_TO_GEN = 1000
REPEATS = 3

WEBGLITCH_DIR = Path(__file__).parent.resolve()
WEBGLITCH_OUTPUT_DIR = WEBGLITCH_DIR / "output"
WEBGLITCH_PARENT_DIR = WEBGLITCH_DIR.parent
CTS_WEBGPU_TESTS_DIR = WEBGLITCH_PARENT_DIR/"dawn"/"third_party"/"webgpu-cts"/"src"/"webgpu"
WG_FUZZ_DIR = WEBGLITCH_PARENT_DIR / "wg-fuzz"
DAWN_DIR = WEBGLITCH_PARENT_DIR / "dawn"
COV_COMPARE_DIR = WEBGLITCH_PARENT_DIR / "CovCompare"
# tests located within dawn/third_party/webgpu-cts/src/webgpu/{platform}/{i}/{i}.spec.ts


# returns output_file path obj
def get_test_file_name(test_no):
    return f"{test_no}.spec.ts"


def create_dir_for_test(platform, test_no):
    test_case_dir = CTS_WEBGPU_TESTS_DIR / platform / str(test_no)
    test_case_dir.mkdir(parents=True, exist_ok=True)
    return test_case_dir


def generate_webglitch_test(test_num, generate_invalid):
    test_dir = create_dir_for_test("webglitch", test_num)
    test_file_name = get_test_file_name(test_num)
    cmd = ["python3", "webglitch.py", "-o", str(test_dir/test_file_name), "-c"]

    if generate_invalid:
        cmd += ["-v", "0.1"]
    subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)


def generate_wg_fuzz_test(test_num, generate_invalid):
    test_dir = create_dir_for_test("wg_fuzz", test_num) # need underscore for CTS
    test_file_name = get_test_file_name(test_num)
    cmd = ["cargo", "run"]

    if generate_invalid:
        cmd += ["--", "1.0", "0.1", "0"]

    MAX_RETRIES = 10
    # wg-fuzz sometimes panics
    for attempt in range(1, MAX_RETRIES + 1):
        try:
            subprocess.run(cmd, check=True, cwd=WG_FUZZ_DIR, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            break
        except subprocess.CalledProcessError:
            if attempt == MAX_RETRIES:
                print(f"wg-fuzz generation of test {test_num} failed. This is a known issue. Skipping...")
                return

    # The following steps prepare wg_fuzz outputs for the stricter type checking of TypeScript used by the CTS
    # If the following steps were not executed, then it would be rejected by the conformance test suite
    # Copy contents of WG_FUZZ_DIR/out to test_dir
    out_dir = WG_FUZZ_DIR / "out"
    for file in out_dir.iterdir():
        if file.is_file():
            shutil.copy(file, test_dir)

    # Rename test.js (now within test_dir) as test_file_name
    original_test_file = test_dir / "test.js"
    final_test_file = test_dir / test_file_name
    original_test_file.rename(final_test_file)

    # Concatenate WEBGLITCH_DIR/rsrcs/js/ctsHeader.ts to test_file_name
    cts_header_path = WEBGLITCH_DIR / "rsrcs" / "js" / "ctsHeader.ts"
    cts_header = cts_header_path.read_text()
    original_code = final_test_file.read_text()
    final_test_file.write_text(cts_header + "\n" + original_code)

    # Open file for writing
    lines = final_test_file.read_text().splitlines()

    # Remove first instance of this line: const fs = require('fs'); in test_file_name
    for line_no, line in enumerate(lines):
        if "const fs = require('fs');" in line:
            lines.pop(line_no)
            break

    # 2. Fix duplicate const uint32 declarations
    # Collect all uint32_xxx variable names
    uint32_vars = set()
    uint32_decl_pattern = re.compile(r'(const|let)\s+(uint32_\d+)\s*=')

    for line in lines:
        match = uint32_decl_pattern.search(line)
        if match:
            var_name = match.group(2)
            uint32_vars.add(var_name)

    # remove all const/let
    fixed_lines = []
    for line in lines:
        if uint32_decl_pattern.search(line):
            # Line is a const uint32_xxxx → remove 'const '
            line = line.replace('const ', '', 1)
        fixed_lines.append(line)

    # inject var declarations at the top
    if uint32_vars:
        var_line = "var " + ", ".join(sorted(uint32_vars)) + ";"
        fixed_lines = [var_line] + fixed_lines

    # 3. Fix .executeBundles([...]) to call .finish()
    final_fixed_lines = []
    execute_bundles_pattern = re.compile(r'\.executeBundles\(\[(.*?)\]\)')

    for line in fixed_lines:
        if ".executeBundles([" in line:
            match = execute_bundles_pattern.search(line)
            if match:
                bundle_list = match.group(1)
                bundles = [b.strip() for b in bundle_list.split(",") if b.strip()]
                bundles = [b + ".finish()" if not b.endswith(".finish()") else b for b in bundles]
                new_bundle_list = ", ".join(bundles)
                line = execute_bundles_pattern.sub(f".executeBundles([{new_bundle_list}])", line)
        final_fixed_lines.append(line)

    # 4. Replace null -> undefined
    final_fixed_lines = [line.replace("null", "undefined") for line in final_fixed_lines]

    # 5. Fix readFile paths
    test_dir_prefix = test_dir.as_posix()
    final_fixed_lines = [line.replace("readFile('", f"readFile('{test_dir_prefix}/") for line in final_fixed_lines]

    # Write the modified content back
    final_test_file.write_text("\n".join(final_fixed_lines))


def decompress_and_format_lcov(input_path, output_path):
    with open(input_path, 'rb') as f:
        compressed_data = f.read()
        decompressed_data = zlib.decompress(compressed_data, zlib.MAX_WBITS|32).decode('utf-8')

    # Assuming the standard lcov format where each new record starts with 'SF:' or 'TN:'
    # and 'end_of_record' is the end of a block, we insert newlines appropriately.
    formatted_data = decompressed_data.replace('end_of_record', 'end_of_record\n')
    formatted_data = formatted_data.replace('SF:', '\nSF:')

    with open(output_path, 'w') as f:
        f.write(formatted_data)


# executes coverage command and returns path to json of results
def run_coverage(platform, use_previous_run_data, use_pre_collected_data):
    platform_to_pre_collected_paths = {
        "api": COV_COMPARE_DIR / "cts_api_formatted.json",
        "shader": COV_COMPARE_DIR / "cts_shader_formatted.json"
    }

    coverage_path_lcov = WEBGLITCH_OUTPUT_DIR / f"{platform}.lcov"
    coverage_path_json = WEBGLITCH_OUTPUT_DIR / f"{platform}.json"

    if platform in platform_to_pre_collected_paths.keys():
        if use_pre_collected_data:
            return platform_to_pre_collected_paths[platform]

        if use_previous_run_data:
            return coverage_path_json

    subprocess.run(
        [
            "./tools/run",
            "run-cts",
            "--coverage",
            f"--bin={str(DAWN_DIR/'out'/'Debug')}",
            f"--export-coverage={str(coverage_path_lcov)}",
            f"webgpu:{platform},*"
        ],
        cwd=DAWN_DIR,
        check=True
    )
    decompress_and_format_lcov(coverage_path_lcov, coverage_path_json)

    return coverage_path_json


def load_dict_from_file(file_path):
    """ Load JSON dictionary from a file. """
    try:
        with open(file_path, 'r') as file:
            return json.load(file)['f']
    except FileNotFoundError:
        print("File not found.")
        sys.exit(1)
    except json.JSONDecodeError:
        print("Error decoding JSON.")
        sys.exit(1)


def parse_non_covered_lines(coverage_dict):
    all_non_covered_lines = {}
    total_covered = 0
    total_lines = 0

    for file, coverage_data in coverage_dict.items():
        # Parse percentage (already a decimal)
        p = coverage_data['p']
        file_coverage_info = {'percentage': p}

        # Flatten uncovered line ranges
        non_covered_lines = set()
        raw_non_covered_lines = coverage_data['u']

        for entry in raw_non_covered_lines:
            start_line = entry[0]
            end_line = entry[2]
            non_covered_lines.update(range(start_line, end_line + 1))

        uncovered_count = len(non_covered_lines)

        # Estimate total and covered lines
        if p < 1.0:
            estimated_total_lines = int(uncovered_count / (1 - p))
        else:
            estimated_total_lines = uncovered_count  # No uncovered lines → total = uncovered_count (0)

        covered_count = estimated_total_lines - uncovered_count

        # Add to global totals
        total_covered += covered_count
        total_lines += estimated_total_lines

        file_coverage_info['non_covered_lines'] = non_covered_lines
        file_coverage_info['uncovered_count'] = uncovered_count
        file_coverage_info['total_lines_count'] = estimated_total_lines
        all_non_covered_lines[file] = file_coverage_info

    return all_non_covered_lines, total_covered


def compare_coverage(fuzzer_non_covered_lines, cts_non_covered_lines):
    coverage_diff = {}

    for file, coverage_data in fuzzer_non_covered_lines.items():
        fuzzer_percent_coverage = coverage_data['percentage']

        if file not in cts_non_covered_lines:
            lines_not_covered_by_cts = set()
        else:
            lines_not_covered_by_cts = cts_non_covered_lines[file]['non_covered_lines']

        file_coverage_info = {}

        lines_not_covered_by_fuzzer = coverage_data['non_covered_lines']

        lines_covered_by_fuzzer_but_not_cts = lines_not_covered_by_cts.difference(lines_not_covered_by_fuzzer)

        file_coverage_info['num_lines_missed'] = len(lines_covered_by_fuzzer_but_not_cts)
        file_coverage_info['lines_missed'] = sorted(lines_covered_by_fuzzer_but_not_cts)
        coverage_diff[file] = file_coverage_info

    # Add all CTS files
    for file, coverage_data in cts_non_covered_lines.items():
        if file in coverage_diff:
            continue

        file_coverage_info = {'num_lines_missed': 0, 'lines_missed': set()}
        coverage_diff[file] = file_coverage_info

    return sum(info['num_lines_missed'] for info in coverage_diff.values())


def collate_coverage(dict_to_collate_to, dict_to_collate_from):
    total_covered = 0
    total_lines = 0

    for file, coverage_data in dict_to_collate_from.items():
        if file not in dict_to_collate_to:
            # Just copy the full file entry over
            dict_to_collate_to[file] = coverage_data
            total_covered += coverage_data['total_lines_count'] - coverage_data['uncovered_count']
            total_lines += coverage_data['total_lines_count']
            continue

        # File exists in both — merge uncovered lines
        existing_data = dict_to_collate_to[file]
        merged_non_covered = existing_data['non_covered_lines'].intersection(
            coverage_data['non_covered_lines']
        )

        uncovered_count = len(merged_non_covered)
        estimated_total_lines = existing_data['total_lines_count']  # use the existing estimate
        covered_count = estimated_total_lines - uncovered_count

        # Update file entry
        dict_to_collate_to[file] = {
            'non_covered_lines': merged_non_covered,
            'uncovered_count': uncovered_count,
            'total_lines_count': estimated_total_lines
        }

        # Update global totals
        total_covered += covered_count
        total_lines += estimated_total_lines

    return dict_to_collate_to, total_covered, total_lines


def calc_cov_percentage(total_covered, total_lines):
    return 100 * total_covered / total_lines


def analyze_output(test_queries_to_cov_dict):
    parsed_coverage_dict = {}
    for platform, cov in test_queries_to_cov_dict.items():
        parsed_data, total_covered_lines = parse_non_covered_lines(cov)
        parsed_coverage_dict[platform] = {
            "parsed_data": parsed_data,
            "total_covered_lines": total_covered_lines
        }

    cts_total_cov_data, cts_total_covered, total_executable = \
        collate_coverage(
            parsed_coverage_dict["api"]["parsed_data"],
            parsed_coverage_dict["shader"]["parsed_data"]
        )

    lines_covered_by_webglitch_not_wg_fuzz = compare_coverage(
        parsed_coverage_dict["webglitch"]["parsed_data"],
        parsed_coverage_dict["wg_fuzz"]["parsed_data"]
    )

    lines_covered_by_wg_fuzz_not_webglitch = compare_coverage(
        parsed_coverage_dict["wg_fuzz"]["parsed_data"],
        parsed_coverage_dict["webglitch"]["parsed_data"]
    )

    webglitch_cov_percent = calc_cov_percentage(
        parsed_coverage_dict["webglitch"]["total_covered_lines"],
        total_executable
    )

    wg_fuzz_cov_percent = calc_cov_percentage(
        parsed_coverage_dict["wg_fuzz"]["total_covered_lines"],
        total_executable
    )

    cts_cov_percent = calc_cov_percentage(cts_total_covered, total_executable)

    return {
        "webglitch_cov_percent": webglitch_cov_percent,
        "wg_fuzz_cov_percent": wg_fuzz_cov_percent,
        "cts_cov_percent": cts_cov_percent,
        "lines_covered_by_webglitch_not_wg_fuzz": lines_covered_by_webglitch_not_wg_fuzz,
        "lines_covered_by_wg_fuzz_not_webglitch": lines_covered_by_wg_fuzz_not_webglitch
    }


def main():
    results = {
        "webglitch_cov_percent": 0,
        "wg_fuzz_cov_percent": 0,
        "cts_cov_percent": 0,
        "lines_covered_by_webglitch_not_wg_fuzz": 0,
        "lines_covered_by_wg_fuzz_not_webglitch": 0
    }

    test_queries = ["api", "shader", "webglitch", "wg_fuzz"]

    for i in range(REPEATS):
        for i in range(1, TESTS_TO_GEN + 1):
            generate_invalid = (i > (TESTS_TO_GEN - INVALID_TESTS_TO_GEN))

            # tests must be written in the format name.spec.ts
            print(f"Generating test case {i} of {TESTS_TO_GEN} for WebGlitch")
            generate_webglitch_test(i, generate_invalid)

            print(f"Generating test case {i} of {TESTS_TO_GEN} for wg-fuzz")
            generate_wg_fuzz_test(i, generate_invalid)

        test_queries_to_cov_dict = {}

        for query in test_queries:
            cov_result_path = run_coverage(query, i != 0, True)  # set this arg to True to use precollected data
            test_queries_to_cov_dict[query] = load_dict_from_file(cov_result_path)

        output = analyze_output(test_queries_to_cov_dict)

        # Accumulate the results
        for key in results:
            results[key] += output[key]

    for key in results:
        results[key] /= REPEATS

    print("WebGlitch coverage of Dawn:", f"{results['webglitch_cov_percent']:.2f}%")
    print("wg-fuzz coverage of Dawn:", f"{results['wg_fuzz_cov_percent']:.2f}%")
    print("CTS coverage of Dawn:", f"{results['cts_cov_percent']:.2f}%")
    print(
        "Lines covered by WebGlitch but missed by wg-fuzz:",
        round(results['lines_covered_by_webglitch_not_wg_fuzz'])
    )
    print(
        "Lines covered by wg-fuzz but missed by WebGlitch:",
        round(results['lines_covered_by_wg_fuzz_not_webglitch'])
    )


if __name__ == "__main__":
    main()
