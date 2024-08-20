@echo off
setlocal enabledelayedexpansion

:: Set constants
set "SCRIPT_DIR=%~dp0"
set RUNNER_PATH=D:\final_proj\WebGlitchRunner\run.bat
set OUTPUT_DIR=D:\final_proj\WebGlitchFiles\files
set /a "i=1"

:: Create output directory if it does not exist
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:loop
set OUTPUT_FILE=%OUTPUT_DIR%\%i%.js
:: Execute the java command
call %SCRIPT_DIR%webglitch.bat %WEBGLITCH_PATH% -o %OUTPUT_FILE% -m
echo Running and logging the file %OUTPUT_FILE%
call %RUNNER_PATH% %OUTPUT_FILE%

:: Increment the counter
set /a "i+=1"

:: Repeat the loop
goto loop

endlocal
