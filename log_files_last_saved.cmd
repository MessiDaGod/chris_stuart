@echo off
REM Specify the folder where the QuickBooks files are located
set "QBFolder=C:\Path\To\Your\QuickBooks\Files"

REM Specify the output log file
set "LogFile=C:\Path\To\Your\LogFile.txt"

REM Clear the log file if it exists
echo Logging QuickBooks file details > "%LogFile%"
echo ---------------------------------- >> "%LogFile%"

REM Change directory to the QuickBooks folder
cd /d "%QBFolder%"

REM Log details for .QBW files
for %%F in (*.QBW *.TLG) do (
    echo File: %%~nF%%~xF >> "%LogFile%"
    echo Size: %%~zF bytes >> "%LogFile%"
    echo Last Modified: %%~tF >> "%LogFile%"
    echo ---------------------------------- >> "%LogFile%"
)

echo File details have been logged to "%LogFile%"
pause
