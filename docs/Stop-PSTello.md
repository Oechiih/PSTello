---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/en/latest/Stop-PSTello
schema: 2.0.0
---

# Stop-PSTello

## SYNOPSIS

Stop your Tello drone i.e. landing or emergency land (cutting all motors)

## SYNTAX

```powershell
Stop-PSTello [-Socket] <Socket> [[-Emergency] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION

Stop your Tello drone i.e. landing or emergency land (cutting all motors)
ATTENTION: By default Stop-PSTello will issue the emergency landing command which will cut all motors and lets the drone smash into the ground.

## EXAMPLES

### Land gracefully

```powershell
PS C:\> $socket = Connect-PStello
PS C:\> Stop-PSTello -Socket $socket -Emergency $false
```

This will gracefully land your Tello drone as opposed to crashing it into the ground

## PARAMETERS

### -Emergency

Specifies wether or not you want to emergency land i.e. cut all motors and smash into the ground. ATTENTION: Default set to true

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: true
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
