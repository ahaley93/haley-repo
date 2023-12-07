# Variables
$VMName1 = "CS-SVR02"
$VMPath = "D:\VM\CS-SVR02"
$ISOPath = "D:\ISO\SERVER_EVAL_x64FRE_en-us (1).iso"
$VHDXPath1 = "D:\VHDX\CS-SVR02\CS-SVR02.vhdx"
$MemoryStartupBytes = 10GB
$ProcessorCount = 2
$VSwitchName = "CS-EXTERNAL"

# Create VM1
New-VM -Name $VMName1 -Generation 2 -MemoryStartupBytes $MemoryStartupBytes -SwitchName $VSwitchName -Path $VMPath 
Set-VM -Name $VMName1 -ProcessorCount $ProcessorCount
Add-VMDvdDrive -VMName $VMName1 -Path $ISOPath
Add-VMHardDiskDrive -VMName $VMName1 -Path $VHDXPath1

