---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/MovePSTelloRotation.html
schema: 2.0.0
---

# Move-PSTelloRotation

## SYNOPSIS

Rotate your Tello drone

## SYNTAX

```powershell
Move-PSTelloRotation [-Socket] <Socket> [[-Direction] <String>] [[-Degree] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Rotate your Tello drone in a specified direction for a specified amount of degrees

## EXAMPLES

### Rotate 90 degrees clockwise

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Move-PSTelloRotation -Socket $socket -Direction 'ClockWise' -Degree 90
```

Rotate your drone for 180 degrees in a clockwise direction

## PARAMETERS

### -Degree

Amount of degrees you want your Tello drone to rotate

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 180
Accept pipeline input: False
Accept wildcard characters: False
```

### -Direction

The direction in which you want your Tello drone to rotate

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ClockWise, CounterClockWise

Required: False
Position: 1
Default value: None
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
