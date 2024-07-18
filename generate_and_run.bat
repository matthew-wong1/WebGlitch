@echo off
setlocal enabledelayedexpansion

:: Set constants
set WEBGLITCH_PATH=D:\final_proj\WebGlitch\app\build\libs\app.jar
set OUTPUT_DIR=D:\final_proj\generated_files
set NUM_FILES=100

:: Create output directory if it does not exist
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:: Run the Java command NUM_FILES times
for /L %%i in (1,1,%NUM_FILES%) do (
    java -jar %WEBGLITCH_PATH% -o %OUTPUT_DIR%\%%i.js
    echo %WEBGLITCH_PATH% -o %OUTPUT_DIR%\%%i.js
    echo Generated file %%i.js
)

endlocal
