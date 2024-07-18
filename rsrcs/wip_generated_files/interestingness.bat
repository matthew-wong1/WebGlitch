@echo off

:: Set the filename of your Node.js script
set filename=slow_performance.js

:: Run the Node.js script with a timeout of 30 seconds
PowerShell -Command "try { $process = Start-Process 'node' -ArgumentList '%filename%' -NoNewWindow -PassThru; $process.WaitForExit(30000); if (!$process.HasExited) { $process.Kill(); Write-Output 'timeout' > timeout.txt; exit 0; } } catch { Write-Output $_.Exception.Message; exit 1; }"

:: Check if the timeout file was created, indicating a forced termination
if exist timeout.txt (
    echo The process was terminated due to timeout.
    del timeout.txt
    exit 0
) else (
    echo The process completed within the time limit.
)

exit 1
