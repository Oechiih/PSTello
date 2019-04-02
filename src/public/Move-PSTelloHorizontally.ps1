using namespace System.Net.Sockets

function Move-PSTelloHorizontally {
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
        $Direction,
        [Parameter()]
        [ValidateRange(20,500)]
        [Int]
        $Distance = 20
    )
    Send-PSTelloCommand -Socket $Socket -Command ('{0} {1}' -f $Direction, $Distance)
}
