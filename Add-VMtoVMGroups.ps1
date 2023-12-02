$VM01 = Get-VM -Name "CS-SQL"
$VM02 = Get-VM -Name "CS-WDS"
$VM03 = Get-VM -Name "CS-SCCM"
$VM04 = Get-VM -Name "CS-FS01"
$VM05 = Get-VM -Name "CS-RRAS"
$VM06 = Get-VM -Name "CS-AZURE"
Add-VMGroupMember -Name "CSTECHS-PRODUCTION" -VM $VM01, $VM02, $VM03, $VM04, $VM05, $VM06