# Define variables
$OUName = "IT"
$SecurityGroupName = "SysAdmins"
$Username = "ahalsysadmin"
$Password = "Mookii94!!!!" # Change this to your desired password

# Create a new Organizational Unit (OU)
New-ADOrganizationalUnit -Name $OUName -Path "OU=IT,DC=cstechs,DC=com" # Change the path as needed

# Create a new security group
New-ADGroup -Name $SecurityGroupName -GroupCategory Security -GroupScope Global -Path "OU=IT,DC=cstechs,DC=com" # Change the path as needed

# Create a new user
New-ADUser -Name $Username -SamAccountName $Username -UserPrincipalName "$Username@cstechs.com" -Path "OU=IT,DC=cstechs,DC=com" -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) -Enabled $true

# Add the user to the security group
Add-ADGroupMember -Identity $SecurityGroupName -Members $Username
