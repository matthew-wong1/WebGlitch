import time
import subprocess
import os
from pathlib import Path

NUM_RUNS = 1000

env = os.environ.copy()
env["DENO_WEBGPU_BACKEND"] = "vulkan"

generation_times = []
dawn_execution_times = []
deno_execution_times = []

webglitch_dir = Path(__file__).parent.resolve()
headers_dir = webglitch_dir/"rsrcs"/"js"
dawn_header = headers_dir/"dawnHeader.js"
deno_header = headers_dir/"denoHeader.js"
webglitch_parent_dir = webglitch_dir.parent
deno_executable = webglitch_parent_dir/"deno"/"target"/"debug"/"deno"
output_dir = webglitch_dir/"output"
output_dir.mkdir(parents=True, exist_ok=True)

def add_header(header_path, body_path, output_path):
    with open(header_path, "r") as h, open(body_path, "r") as b, open(output_path, "w") as out:
        out.write(h.read())
        out.write(b.read())

def log_execution_times(cmd, execution_times, env=None):
    start_exec = time.perf_counter()
    result = subprocess.run(cmd, capture_output=False, check=True, env=env)
    end_exec = time.perf_counter()
    execution_times.append(end_exec - start_exec)

for i in range(NUM_RUNS):
    output_path = str(output_dir/f"{i}.js")
    dawn_file = str(output_dir/f"{i}_dawn.js")
    deno_file = str(output_dir/f"{i}_deno.js")

    GENERATION_CMD = ["python3", "webglitch.py", "-o", output_path, "-w", "-m"]
    DAWN_CMD = ["node", dawn_file]
    DENO_CMD = [
        str(deno_executable),
        "--allow-read",
        "--unstable-webgpu",
        "--allow-write",
        deno_file
    ]

    log_execution_times(GENERATION_CMD, generation_times)

    add_header(dawn_header, output_path, dawn_file)
    log_execution_times(DAWN_CMD, dawn_execution_times)

    add_header(deno_header, output_path, deno_file)
    log_execution_times(DENO_CMD, deno_execution_times, env=env)

avg_gen = sum(generation_times) / len(generation_times)
avg_dawn_exec = sum(dawn_execution_times) / len(dawn_execution_times)
avg_deno_exec = sum(deno_execution_times) / len(deno_execution_times)

print(f"Average generation time: {avg_gen:.6f} seconds")
print(f"Average Dawn execution time: {avg_dawn_exec:.6f} seconds")
print(f"Average Deno execution time: {avg_deno_exec:.6f} seconds")

