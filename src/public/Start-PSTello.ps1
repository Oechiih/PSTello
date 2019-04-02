using namespace System.Net.Sockets

function Start-PSTello {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket
    )
    Send-PSTelloCommand -Socket $Socket -Command 'takeoff'
}
