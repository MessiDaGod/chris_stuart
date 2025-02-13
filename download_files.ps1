# Define the URL of the file to download
$sourceUrl = "https://raw.githubusercontent.com/MessiDaGod/chris_stuart/main/log_files_last_saved.cmd"

# Define the destination path where the file will be saved
# Adjust the path as necessary
$destinationPath = "C:\Users\Public\log_files_last_saved.cmd"

# Use Invoke-WebRequest to download the file
try {
    Write-Host "Downloading file from $sourceUrl to $destinationPath..."
    Invoke-WebRequest -Uri $sourceUrl -OutFile $destinationPath -UseBasicParsing
    Write-Host "File successfully downloaded to $destinationPath"

    # Extract the folder path from the destination file path
    $folderPath = Split-Path -Path $destinationPath -Parent

    # Open the folder in Windows Explorer
    Write-Host "Opening folder: $folderPath"
    Start-Process explorer.exe $folderPath
} catch {
    Write-Error "Failed to download the file: $_"
}
