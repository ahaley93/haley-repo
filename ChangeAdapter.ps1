# Define the network adapter name (change this to match your adapter)
$adapterName = "Ethernet"

# Define the new network configuration settings
$ipAddress = "192.168.1.100"
$subnetMask = "255.255.255.0"
$defaultGateway = "192.168.1.1"
$dnsServer = "8.8.8.8"

# Set the IP address, subnet mask, default gateway, and DNS server
Set-NetIPInterface -InterfaceAlias $adapterName -Dhcp Disabled
New-NetIPAddress -InterfaceAlias $adapterName -IPAddress $ipAddress -PrefixLength 24 -DefaultGateway $defaultGateway
Set-DnsClientServerAddress -InterfaceAlias $adapterName -ServerAddresses $dnsServer

# Display the new network configuration
Get-NetIPAddress -InterfaceAlias $adapterName
Get-NetRoute -InterfaceAlias $adapterName
Get-DnsClientServerAddress -InterfaceAlias $adapterName
