# Define the VM name
$VMName = "CS-AZURE"

# Get the VM object
$VM = Get-VM -Name $VMName

# Define the boot order
$BootOrder = @(
    "CD"
    "IDE"
    "LegacyNetworkAdapter"
    "Floppy"
    "LegacyFloppy"
)

# Set the boot order for the VM
Set-VMFirmware -VMName $VMName -FirstBootDevice $BootOrder[0] -SecondBootDevice $BootOrder[1] -ThirdBootDevice $BootOrder[2] -FourthBootDevice $BootOrder[3] -FifthBootDevice $BootOrder[4]
