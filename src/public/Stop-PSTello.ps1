using namespace System.Net.Sockets

function Stop-PSTello {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket,
        [Parameter()]
        [bool]
        $Emergency = $true
    )
    if ($Emergency) {
        $command = 'emergency'
    } else {
        $command = 'land'
    }
    Send-PSTelloCommand -Socket $Socket -Command $command
}
