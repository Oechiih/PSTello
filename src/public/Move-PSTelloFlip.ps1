using namespace System.Net.Sockets

function Move-PSTelloFlip {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket,
        [Parameter(Mandatory)]
        [ValidateSet(
            'left',
            'right',
            'forward',
            'back'
        )]
        [string]
        $Direction
    )
    Send-PSTelloCommand -Socket $Socket -Command ('flip {0}' -f $Direction.Substring(0,1))
}
