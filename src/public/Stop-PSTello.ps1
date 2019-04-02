function Stop-PSTello {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $socket,
        [Parameter()]
        [bool]
        $Emergency = $true
    )
    if ($Emergency) {
        $EncodedText = [Text.Encoding]::ASCII.GetBytes('emergency')
    }else {
        $EncodedText = [Text.Encoding]::ASCII.GetBytes('land')
    }
    $socket.send($EncodedText)
}
