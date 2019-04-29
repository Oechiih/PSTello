---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/en/latest/Move-PSTelloHorizontally
schema: 2.0.0
---

# Move-PSTelloHorizontally

## SYNOPSIS

Moves your Tello drone horizontally

## SYNTAX

```powershell
Move-PSTelloHorizontally [-Socket] <Socket> [-Direction] <String> [[-Distance] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Moves your Tello drone horizontally in a specified direction for a specified distance in cm

## EXAMPLES

### Move 50cm to the right

```powershell
PS C:\> $socket = Connect-PStello
PS C:\> Move-PSTelloHorizontally -Socket $socket -Direction 'right' -Distance 50
```

Moves your Tello drone 50cm to the right

## PARAMETERS

### -Direction

The horizontal direction in which you want your Tello drone to move

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

### -Distance

The distance in which you want your Tello drone to move horizontally

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
