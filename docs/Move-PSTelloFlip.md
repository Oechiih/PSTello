---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/MovePSTelloFlip.html
schema: 2.0.0
---

# Move-PSTelloFlip

## SYNOPSIS

Flips your Tello drone in the specified direction

## SYNTAX

```powershell
Move-PSTelloFlip [-Socket] <Socket> [-Direction] <String> [<CommonParameters>]
```

## DESCRIPTION

Flip your Tello drone in the specified direction.
Note: If the battery level of your Tello drone is lower than 50% it will not flip.

## EXAMPLES

### Flip left

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Move-PSTellFlip -Socket $socket -Direction 'left'
```

Flips your Tello drone to the left

## PARAMETERS

### -Direction

The direction in which you want your Tello drone to flip

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: left, right, forward, back

Required: True
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

### System.Object

## NOTES

## RELATED LINKS
