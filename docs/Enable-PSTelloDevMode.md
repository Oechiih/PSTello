---
external help file: PSTello-help.xml
Module Name: pstello
online version: http://pstello.readthedocs.org/EnablePSTelloDevMode.html
schema: 2.0.0
---

# Enable-PSTelloDevMode

## SYNOPSIS

Manually enable dev mode on your Tello drone

## SYNTAX

```powershell
Enable-PSTelloDevMode [-Socket] <Socket> [<CommonParameters>]
```

## DESCRIPTION

Takes a socket object connected to your Tello drone and sends 'command' to it in order to enable dev mode.
Note: This is automatically invoked by Connect-PSTello.

## EXAMPLES

### Reenable dev mode

```powershell
PS C:\> $socket = Connect-PSTello
PS C:\> Enable-PSTelloDevMode -Socket $socket
```

Connect-PSTello automatically invoke Enable-PSTelloDevMode but in case the drone exits dev mode for some reason, it can be reenabled by using this command.

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
