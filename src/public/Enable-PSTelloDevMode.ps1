function Enable-PSTelloDevMode {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $socket
    )

    $EncodedText = [Text.Encoding]::ASCII.GetBytes('command')

    $socket.send($EncodedText)
}
