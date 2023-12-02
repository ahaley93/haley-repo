$VMGroup01 = Get-VMGroup -Name "CSTECHS-PRODUCTION"
$VMGroup02 = Get-VMGroup -Name "CSTECHS-SANDBOX"
Add-VMGroupMember -Name "CS-ENTERPRISE" -VMGroupMember $VMGroup01, $VMGroup02