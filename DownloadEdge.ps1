# Define the URL for Microsoft Edge Stable version
$edgeDownloadUrl = "https://www.microsoft.com/en-us/edge/download?form=MA13FJ"

# Define the destination path for downloading Edge installer
$downloadPath = "$env:TEMP\MicrosoftEdgeSetup.exe"

# Download Microsoft Edge installer
Invoke-WebRequest -Uri $edgeDownloadUrl -OutFile $downloadPath

# Install Microsoft Edge silently
Start-Process -FilePath $downloadPath -ArgumentList "/silent" -Wait

# Clean up the downloaded installer
Remove-Item $downloadPath
