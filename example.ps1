$socket = [System.Net.Sockets.Socket]::new([System.Net.Sockets.SocketType]::dgram, [System.Net.Sockets.ProtocolType]::Udp)

$socket.Connect([ipaddress]'192.168.10.1', 8889)

$EncodedText = [Text.Encoding]::ASCII.GetBytes('command')

$socket.send($EncodedText)
