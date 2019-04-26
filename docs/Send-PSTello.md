---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/SendPSTello.html
schema: 2.0.0
---

# Send-PSTello

## SYNOPSIS

Send a command to your Tello drone

## SYNTAX

```powershell
Send-PSTello [-Socket] <Socket> [[-Command] <String>] [<CommonParameters>]
```

## DESCRIPTION

Send a specific command to your Tello drone

## EXAMPLES

### Emergency landing

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Send-PSTello -Socket $socket -Command 'emergency'
```

Emergency lands your Tello drone i.e. crashes it by cutting all motors

## PARAMETERS

### -Command

The command you would like to send to your Tello drone

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: takeoff, land, streamon, streamoff, emergency

Required: False
Position: 1
Default value: land
Accept pipeline input: False
Accept wildcard characters: False
```

### -Socket

The UDP socket object connected to your Tello drone

```yaml
Type: System.Net.Sockets.Socket
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### None

## NOTES

## RELATED LINKS
