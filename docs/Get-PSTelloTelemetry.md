---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/en/latest/Get-PSTelloTelemetry
schema: 2.0.0
---

# Get-PSTelloTelemetry

## SYNOPSIS

Gets specific telemetry value of your Tello drone

## SYNTAX

```powershell
Get-PSTelloTelemetry [-Socket] <Socket> [[-Value] <String>] [<CommonParameters>]
```

## DESCRIPTION

Gets one specific telemetry value at this point in time. Provide it with an object of type [System.Net.Sockets.Socket] and a desired value.

## EXAMPLES

### Battery state

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Get-PSTelloTelemetry -Socket $socket -Value 'battery?'
```

This will return the current battery level in percent.

## PARAMETERS

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

### -Value

Your desired value

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: speed?, battery?, time?, height?, temp?, attitude?, baro?, acceleration?, tof?, wifi?

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
