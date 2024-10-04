# WebGlitch
A WebGPU program generator for fuzz testing. 

## Requirements:
1. Gradle 8.9+
2. Node v20+
3. Python 3.10+
4. Java 21.0+

## Building:
```console
gradle build

npm install 
```

## Usage:
```console
// To directly interface with the .jar file:
python3 webglich.py <.jar options>

// To generate and execute generated programs (requires WebGlitchRunner)
// supported platforms: 'all', 'all_runtimes', 'all_browsers', 'dawn', 'wgpu', 'chrome', 'firefox'
python3 webglitch.py --run <platform>

// To generate programs in the CTS format:
python3 webglitch.py --cts <num_files>
```
* Please update the `RUNNER_PATH and OUTPUT_DIR variables` first in `webglitch.py`
* You can also use the scripts `webglitch.sh` and `webglitch.bat` to integrate with other tools (no need to specify paths)

## Features:
1. All generated API calls can be guaranteed to be valid 
2. All dependencies necessary for an API call to be valid are generated
3. Integrates with WGSLsmith to generate random compute shaders 
3. Configurable settings are located in `config.json`. Additional settings can be changed when running the .jar file with CLI flags
4. Can be used with `WebGlitchRunner`, `FaultFinder`, `WebGlitchInterestingness`, and `CovCompare`

## In progress:
* Code is undergoing refactoring to remove tech debt
* Changes are being made to how API calls are defined in JSON to make it more streamlined