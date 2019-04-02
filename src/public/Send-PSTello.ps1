using namespace System.Net.Sockets

function Send-PSTello {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket,
        [Parameter()]
        [ValidateSet('takeoff','land','streamon','streamoff','emergency')]
        [string]
        $Command = 'land'
    )
    Send-PSTelloCommand -Socket $Socket -Command $Command
}
