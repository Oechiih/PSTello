using namespace System.Net.Sockets
using namespace System.Net.IPAddress
using namespace System.Net.IPEndPoint

function Get-PSTelloState {

    $endpoint = [System.Net.IPEndPoint]::new([System.Net.IPAddress]'0.0.0.0', 8890)

    $client = [System.Net.Sockets.UdpClient]::new('8890')

    $client.Receive([ref]$endpoint)
}
