using namespace System.Net.Sockets
using namespace System.Net.IPAddress

function Connect-PSTello {

    $socket = [System.Net.Sockets.Socket]::new([System.Net.Sockets.SocketType]::dgram, [System.Net.Sockets.ProtocolType]::Udp)
    $socket.Connect([System.Net.IPAddress]'192.168.10.1', 8889)
    $null = Enable-PSTelloDevMode -Socket $socket

    return $socket
}
