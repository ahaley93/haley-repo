# Specify the network adapter name
$adapterName = "Ethernet"  # Change this to the actual name of your network adapter

# Specify the new IP address, subnet mask, and DNS addresses
$ipAddress = "192.168.1.100"
$subnetMask = "255.255.255.0"
$dnsAddresses = @("8.8.8.8", "8.8.4.4")  # Change these to your desired DNS addresses

# Get the network adapter configuration
$adapter = Get-NetAdapter | Where-Object {$_.Name -eq $adapterName}

if ($adapter -eq $null) {
    Write-Host "Network adapter not found: $adapterName"
} else {
    # Set the IP address, subnet mask, and DNS addresses
    $adapter | New-NetIPAddress -IPAddress $ipAddress -PrefixLength 24 -DefaultGateway 192.168.1.1
    $adapter | Set-DnsClientServerAddress -ServerAddresses $dnsAddresses
    $adapter | Set-NetIPInterface -InterfaceMetric 10  # Change the metric value if needed

    Write-Host "Network adapter settings changed successfully:"
    Write-Host "   IP Address: $ipAddress"
    Write-Host "   Subnet Mask: $subnetMask"
    Write-Host "   DNS Addresses: $($dnsAddresses -join ', ')"
}
