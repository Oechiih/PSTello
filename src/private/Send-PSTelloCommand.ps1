using namespace System.Text
using namespace System.Net.Sockets

function Send-PSTelloCommand {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $socket,
        [Parameter(Mandatory)]
        [string]
        $Command
    )
    $EncodedText = [System.Text.Encoding]::ASCII.GetBytes($Command)
    $socket.send($EncodedText)
}
