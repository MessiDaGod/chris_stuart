@echo off
REM Prompt user to enter the QuickBooks folder path
set /p "QBFolder=Enter the path to your QuickBooks folder (leave blank for current directory): "

REM Use current directory if no folder path is entered
if "%QBFolder%"=="" set "QBFolder=%cd%"

REM Verify the folder exists
if not exist "%QBFolder%" (
    echo The folder "%QBFolder%" does not exist. Please check the path and try again.
    pause
    exit /b
)

REM Prompt user to enter the base name for the log file
set /p "LogFile=Enter the path and filename for the log file (leave blank for current directory, QuickBooksLog.txt): "

REM Use default log file name if no input is provided
if "%LogFile%"=="" set "LogFile=%QBFolder%\QuickBooksLog.txt"

REM Inform the user about the log file being used
echo Using log file: %LogFile%
echo.

REM Write a header to the log file if it's empty
if not exist "%LogFile%" (
    echo Logging QuickBooks file details > "%LogFile%"
    echo ---------------------------------- >> "%LogFile%"
) else (
    echo Appending new entries to existing log file...
)

REM Change directory to the QuickBooks folder
cd /d "%QBFolder%"

REM Append details for .QBW and .TLG files
for %%F in (*.QBW *.TLG) do (
    echo File: %%~nF%%~xF >> "%LogFile%"
    echo Size: %%~zF bytes >> "%LogFile%"
    echo Last Modified: %%~tF >> "%LogFile%"
    echo ---------------------------------- >> "%LogFile%"
)

echo File details have been appended to "%LogFile%"
pause
