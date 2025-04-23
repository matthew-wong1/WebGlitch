import subprocess
import shutil
from pathlib import Path

TESTS_TO_GEN = 1
# TESTS_TO_GEN = 2000

WEBGLITCH_DIR = Path(__file__).parent.resolve()
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


def run_coverage(platform):
    subprocess.run(
        [
            "./tools/run",
            "run-cts",
            "--coverage",
            f"--bin={str(DAWN_DIR/'out'/'Debug')}",
            f"--export-coverage={str(COV_COMPARE_DIR / platform)}.lcov",
            f"webgpu:{platform},*"
        ],
        cwd=DAWN_DIR,
        check=True
    )


# parse output with covcompare
# concatenate api and shader results
# print to console the results
def analyze_output():
    pass


for i in range(1, TESTS_TO_GEN + 1):
    # tests must be written in the format name.spec.ts
    print(f"Generating test case {i} of {TESTS_TO_GEN} for WebGlitch")
    generate_webglitch_test(i)

    print(f"Generating test case {i} of {TESTS_TO_GEN} for wg-fuzz")
    generate_wg_fuzz_test(i)

run_coverage("api")
run_coverage("shader")
run_coverage("webglitch")
run_coverage("wg_fuzz")

analyze_output()
