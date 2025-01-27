@echo off
REM Save the directory where the script is being executed
set "OriginalDir=%cd%"

REM Prompt user to enter the QuickBooks folder path
set /p "QBFolder=Enter the path to your QuickBooks folder (leave blank for current directory): "

REM Use current directory if no folder path is entered
if "%QBFolder%"=="" set "QBFolder=%OriginalDir%"

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

REM Get the current date and time
for /f "tokens=1-4 delims=/ " %%A in ('date /t') do set curDate=%%A-%%B-%%C
for /f "tokens=1-2 delims=: " %%A in ('time /t') do set curTime=%%A-%%B
set "Timestamp=%curDate% %curTime%"

REM Write a header to the log file if it doesn't exist, with a timestamp
if not exist "%LogFile%" (
    echo Logging QuickBooks file details on %Timestamp% > "%LogFile%"
    echo ---------------------------------- >> "%LogFile%"
) else (
    echo Appending new entries to existing log file...
    echo Run Date/Time: %Timestamp% >> "%LogFile%"
)

REM Change directory to the QuickBooks folder
cd /d "%QBFolder%"

REM DEBUG: List all files in the directory for review
echo DEBUG: Listing all files in the directory >> "%LogFile%"
dir >> "%LogFile%"
echo ---------------------------------- >> "%LogFile%"

REM Log details for .QBW and .TLG files (case insensitive search)
for %%F in (*.qbw *.QBW *.tlg *.TLG) do (
    echo DEBUG: Processing file %%F >> "%LogFile%"
    if exist "%%F" (
        echo File: %%~nF%%~xF >> "%LogFile%"
        echo Size: %%~zF bytes >> "%LogFile%"
        echo Last Modified: %%~tF >> "%LogFile%"
        echo ---------------------------------- >> "%LogFile%"
    ) else (
        echo DEBUG: File %%F not found. >> "%LogFile%"
    )
)

REM Return to the original directory
cd /d "%OriginalDir%"
echo Returned to original directory: %OriginalDir%

echo File details have been logged to "%LogFile%"
pause
