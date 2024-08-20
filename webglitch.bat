@echo off
REM Get the directory where the batch file is located
set "WEBGLITCH_DIR=%~dp0"

REM Define the path to the .jar file using the script directory
set WEBGLITCH_JAR_PATH=%WEBGLITCH_DIR%app\build\libs\app.jar

REM Execute the Java application and pass all arguments
java -jar "%WEBGLITCH_JAR_PATH%" %*

REM Exit the batch script
exit /B
