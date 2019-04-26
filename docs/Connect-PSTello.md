---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/ConnectPSTello.html
schema: 2.0.0
---

# Connect-PSTello

## SYNOPSIS

Creates a UDP socket connected to your Tello drone

## SYNTAX

```powershell
$socket = Connect-PSTello
```

## DESCRIPTION

Connects a UDP socket to 192.168.10.1:8889, enables command mode by sending a package containing 'command' and returns the socket as output.

## EXAMPLES

### Connect to PSTello

```powershell
PS C:\> $socket = Connect-PSTello
```

This connects the UDP socket required for every other command you may want to run and stores it in the variable $socket.

## PARAMETERS

## INPUTS

### None

## OUTPUTS

### System.Net.Sockets.Socket

## NOTES

## RELATED LINKS
