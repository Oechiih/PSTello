using namespace System.Net.Sockets

function Move-PSTelloRotation {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket,
        [Parameter()]
        [ValidateSet(
            'ClockWise',
            'CounterClockWise'
        )]
        [string]
        $Direction = 'ClockWise',
        [Parameter()]
        [ValidateRange(1, 360)]
        [Int]
        $Degree = 180
    )

    switch ($Direction) {
        'ClockWise' { $rotationDirection = 'cw' }
        'CounterClockWise' { $rotationDirection = 'ccw' }
        Default { $rotationDirection = 'cw' }
    }
    Send-PSTelloCommand -Socket $Socket -Command ('{0} {1}' -f $rotationDirection, $Degree)
}
