@echo off
REM Automatically use the directory where the script is executed
set "QBFolder=%~dp0"

REM Set default log file location
set "LogFile=%QBFolder%\QuickBooksLog.txt"

REM Inform the user about the log file being used
echo Using QuickBooks folder: %QBFolder%
echo Using log file: %LogFile%
echo.

REM Verify the folder exists
if not exist "%QBFolder%" (
    echo The folder "%QBFolder%" does not exist. Please check the path and try again.
    pause
    exit /b
)

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

REM Log details for .QBW and .TLG files (case insensitive search)
for %%F in (*.qbw *.QBW *.tlg *.TLG) do (
    if exist "%%F" (
        echo Processing file: %%~nxF >> "%LogFile%"
        echo File: %%~nxF >> "%LogFile%"
        echo Size: %%~zF bytes >> "%LogFile%"
        echo Last Modified: %%~tF >> "%LogFile%"
        echo ---------------------------------- >> "%LogFile%"
    )
)

REM Check and log details for QuickBooksAutoDataRecovery folder
set "ADRFolder=%QBFolder%\QuickBooksAutoDataRecovery"
if exist "%ADRFolder%" (
    echo Listing all files in QuickBooksAutoDataRecovery folder >> "%LogFile%"
    for %%F in ("%ADRFolder%\*") do (
        if exist "%%F" (
            echo Processing ADR file: %%~nxF >> "%LogFile%"
            echo File: %%~nxF >> "%LogFile%"
            echo Size: %%~zF bytes >> "%LogFile%"
            echo Last Modified: %%~tF >> "%LogFile%"
            echo ---------------------------------- >> "%LogFile%"
        )
    )
) else (
    echo QuickBooksAutoDataRecovery folder not found at %ADRFolder% >> "%LogFile%"
)

REM Return to the original directory
cd /d "%~dp0"
echo Returned to original directory: %~dp0

echo File details have been logged to "%LogFile%"
pause
