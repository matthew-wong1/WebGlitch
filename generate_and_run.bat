@echo off
setlocal enabledelayedexpansion

:: Set constants
set WEBGLITCH_PATH=D:\final_proj\WebGlitch\app\build\libs\app.jar
set RUNNER_PATH=D:\final_proj\WebGlitchRunner\run.bat
set OUTPUT_DIR=D:\final_proj\WebGlitchFiles\files
set NUM_FILES=100
set /a "i=1"

:: Create output directory if it does not exist
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:: Run the Java command NUM_FILES times
:: for /L %%i in (1,1,%NUM_FILES%) do (
    :: java -jar %WEBGLITCH_PATH% -o %OUTPUT_DIR%\%%i.js -m
    :: echo %WEBGLITCH_PATH% -o %OUTPUT_DIR%\%%i.js
    :: echo Generated file %%i.js
:: )

:loop
set OUTPUT_FILE=%OUTPUT_DIR%\%i%.js
:: Execute the java command
java -jar %WEBGLITCH_PATH% -o %OUTPUT_FILE% -m
echo Running and logging the file %OUTPUT_FILE%
call %RUNNER_PATH% %OUTPUT_FILE%

:: Increment the counter
set /a "i+=1"

:: Repeat the loop
goto loop

endlocal
