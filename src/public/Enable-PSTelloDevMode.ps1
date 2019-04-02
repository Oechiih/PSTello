using namespace System.Net.Sockets

function Enable-PSTelloDevMode {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket
    )
    Send-PSTelloCommand -Socket $Socket -Command 'command'
}
