using namespace System.Net.Sockets

function Get-PSTelloTelemetry {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket,
        [Parameter()]
        [ValidateSet('speed?','battery?','time?','height?','temp?','attitude?','baro?','acceleration?','tof?','wifi?')]
        [string]
        $Value = 'battery?'
    )
    Send-PSTelloCommand -Socket $Socket -Command $Value
}
