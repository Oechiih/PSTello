---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/en/latest/Move-PSTelloVertically
schema: 2.0.0
---

# Move-PSTelloVertically

## SYNOPSIS

Move your Tello drone vertically

## SYNTAX

```powershell
Move-PSTelloVertically [-Socket] <Socket> [-Direction] <String> [[-Distance] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Moves your Tello drone vertically in a specified direction for a specified distance in cm

## EXAMPLES

### Move up for 60cm

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Move-PSTelloVertically -Socket $socket -Direction 'up' -Distance 60
```

Increase the flight height of your Tello drone by 60cm

## PARAMETERS

### -Direction

The vertical direction in which you want your Tello drone to move

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: up, down

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Distance

The distance in which you want your Tello drone to move vertically

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 20
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
