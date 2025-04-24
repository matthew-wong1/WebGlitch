import subprocess
import shutil
from pathlib import Path
import zlib
import json
import sys

TESTS_TO_GEN = 1
# TESTS_TO_GEN = 2000

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


def generate_webglitch_test(test_num):
    test_dir = create_dir_for_test("webglitch", test_num)
    test_file_name = get_test_file_name(test_num)
    subprocess.run(["python3", "webglitch.py", "-o", str(test_dir/test_file_name), "-c"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)


def generate_wg_fuzz_test(test_num):
    test_dir = create_dir_for_test("wg_fuzz", test_num) # need underscore for CTS
    test_file_name = get_test_file_name(test_num)
    subprocess.run(["cargo", "run"], check=True, cwd=WG_FUZZ_DIR, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

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

    # Replace all instances of null with undefined
    modified_lines = [line.replace("null", "undefined") for line in lines]

    # Replace readFile(' with readFile('test_dir
    test_dir_prefix = test_dir.as_posix()
    modified_lines = [line.replace("readFile('", f"readFile('{test_dir_prefix}/") for line in modified_lines]

    # Write the modified content back
    final_test_file.write_text("\n".join(modified_lines))


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
def run_coverage(platform, use_pre_collected_data=False):
    platform_to_pre_collected_paths = {
        "api": COV_COMPARE_DIR / "cts_api_formatted.json",
        "shader": COV_COMPARE_DIR / "cts_shader_formatted.json"
    }

    coverage_path_lcov = WEBGLITCH_OUTPUT_DIR / f"{platform}.lcov"
    coverage_path_json = WEBGLITCH_OUTPUT_DIR / f"{platform}.json"

    if use_pre_collected_data and platform in platform_to_pre_collected_paths.keys():
        return platform_to_pre_collected_paths[platform]

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
        parsed_coverage_dict["webglitch"]["total_covered"],
        total_executable
    )

    wg_fuzz_cov_percent = calc_cov_percentage(
        parsed_coverage_dict["wg_fuzz"]["total_covered"],
        total_executable
    )

    cts_cov_percent = calc_cov_percentage(cts_total_covered, total_executable)

    print("WebGlitch coverage of Dawn:", f"{webglitch_cov_percent}%")
    print("wg-fuzz coverage of Dawn:", f"{wg_fuzz_cov_percent}%")
    print("CTS coverage of Dawn:", f"{cts_cov_percent}%")
    print(
        "Lines covered by WebGlitch but missed by wg-fuzz:",
        lines_covered_by_webglitch_not_wg_fuzz
    )
    print(
        "Lines covered by wg-fuzz but missed by WebGlitch:",
        lines_covered_by_wg_fuzz_not_webglitch
    )


def main():
    for i in range(1, TESTS_TO_GEN + 1):
        # tests must be written in the format name.spec.ts
        print(f"Generating test case {i} of {TESTS_TO_GEN} for WebGlitch")
        generate_webglitch_test(i)

        print(f"Generating test case {i} of {TESTS_TO_GEN} for wg-fuzz")
        generate_wg_fuzz_test(i)

    test_queries = ["api", "shader", "webglitch", "wg_fuzz"]

    test_queries_to_cov_dict = {}
    for query in test_queries:
        cov_result_path = run_coverage(query, True)
        test_queries_to_cov_dict[query] = load_dict_from_file(cov_result_path)

    analyze_output(test_queries_to_cov_dict)


if __name__ == "__main__":
    main()
