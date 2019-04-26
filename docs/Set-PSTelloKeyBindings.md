---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/SetPSTelloKeyBindings.html
schema: 2.0.0
---

# Set-PSTelloKeyBindings

## SYNOPSIS

Setup keybindings to control your Tello drone using your keyboard.

## SYNTAX

```powershell
Set-PSTelloKeyBindings [-Socket] <Socket> [<CommonParameters>]
```

## DESCRIPTION

Sets up keybindings to control your Tello drone using your keyboard while window focus is on your terminal.
Check out the keybindings in [about_PSTelloKeybindings]("pstello.readthedocs.org/about_PSTelloKeyBindings.html")

## EXAMPLES

### Setup keybindings

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Set-PSTelloKeyBindings -Socket $socket
```

Sets up keybindings as described in [about_PSTelloKeybindings]("pstello.readthedocs.org/about_PSTelloKeyBindings.html")

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### None

## NOTES

## RELATED LINKS
