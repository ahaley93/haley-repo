# Step 1: Set the computer name
$NewComputerName = "YourNewDCName"
Rename-Computer -NewName $NewComputerName -Force

#Step 2: Set Time Zone
$desiredTimeZone = "Eastern Standard Time"

# Check if the time zone exists on the system
if (Get-TimeZone -Id $desiredTimeZone -ErrorAction SilentlyContinue) {
    # Set the time zone
    Set-TimeZone -Id $desiredTimeZone
    Write-Host "Time zone set to $desiredTimeZone."
} else {
    Write-Host "The specified time zone '$desiredTimeZone' does not exist on this system."
}


# Step 3: Run Windows Updates (Requires prior configuration of Windows Update settings)
Install-WindowsUpdate -AcceptAll -Install -AutoReboot

# Step 4: Reboot the server
Restart-Computer -Force

