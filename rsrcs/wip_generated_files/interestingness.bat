@echo off
SET filename=buffer_recording_ended.js

REM Capture the output of the node script
node %filename% > temp.txt 2>&1

REM Check for the error string
findstr /C:"Command buffer recording ended before [ComputePassEncoder \"GPUComputePassEncoder12\"] was ended" temp.txt
if errorlevel 1 (
    exit /b 1
) else (
    exit /b 0
)

REM Clean up temporary file
del temp.txt