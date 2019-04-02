function Get-PSTelloState {

    $endpoint = [System.Net.IPEndPoint]::new([ipaddress]'0.0.0.0', 8890)

    $client = [System.Net.Sockets.UdpClient]::new('8890')

    $client.Receive([ref]$endpoint)
}
