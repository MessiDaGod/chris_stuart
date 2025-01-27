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

REM Check if the log file exists and create a unique file name
set "BaseLogFile=%LogFile%"
set "Counter=1"
:check_file
if exist "%LogFile%" (
    for %%A in ("%BaseLogFile%") do (
        set "LogFile=%%~dpnA_%Counter%%%~xA"
    )
    set /a Counter+=1
    goto check_file
)

REM Inform the user about the log file being used
echo Using log file: %LogFile%
echo.

REM Clear the log file (or initialize it)
echo Logging QuickBooks file details > "%LogFile%"
echo ---------------------------------- >> "%LogFile%"

REM Change directory to the QuickBooks folder
cd /d "%QBFolder%"

REM Log details for .QBW and .TLG files
for %%F in (*.QBW *.TLG) do (
    echo File: %%~nF%%~xF >> "%LogFile%"
    echo Size: %%~zF bytes >> "%LogFile%"
    echo Last Modified: %%~tF >> "%LogFile%"
    echo ---------------------------------- >> "%LogFile%"
)

echo File details have been logged to "%LogFile%"
pause
