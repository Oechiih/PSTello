function Set-PSTelloKeyBindings {
    param (
        [Parameter(Mandatory)]
        [System.Net.Sockets.Socket]
        $Socket
    )

    #region: Horizontal movement
    Set-PSReadLineKeyHandler -Key LeftArrow
    -BriefDescription MoveLeft20cm `
        -LongDescription "Move the drone 20cm to the left" `
        -ScriptBlock {
        Move-PSTelloHorizontally -Socket $Socket -Direction 'left' -Distance 20
    }

    Set-PSReadLineKeyHandler -Key RightArrow
    -BriefDescription MoveRight20cm `
        -LongDescription "Move the drone 20cm to the Right" `
        -ScriptBlock {
        Move-PSTelloHorizontally -Socket $Socket -Direction 'right' -Distance 20
    }

    Set-PSReadLineKeyHandler -Key UpArrow
    -BriefDescription MoveForward20cm `
        -LongDescription "Move the drone 20cm to the front" `
        -ScriptBlock {
        Move-PSTelloHorizontally -Socket $Socket -Direction 'forward' -Distance 20
    }

    Set-PSReadLineKeyHandler -Key DownArrow
    -BriefDescription MoveBackward20cm `
        -LongDescription "Move the drone 20cm to the back" `
        -ScriptBlock {
        Move-PSTelloHorizontally -Socket $Socket -Direction 'back' -Distance 20
    }
    #endregion

    #region: Vertical movement
    Set-PSReadLineKeyHandler -Key Ctrl+UpArrow
    -BriefDescription MoveHigher20cm `
        -LongDescription "Move the drone 20cm to higher" `
        -ScriptBlock {
        Move-PSTelloVertically -Socket $Socket -Direction 'up' -Distance 20
    }

    Set-PSReadLineKeyHandler -Key Ctrl+DownArrow
    -BriefDescription MoveLower20cm `
        -LongDescription "Move the drone 20cm to lower" `
        -ScriptBlock {
        Move-PSTelloVertically -Socket $Socket -Direction 'down' -Distance 20
    }
    #endregion

    #region: Rotation
    Set-PSReadLineKeyHandler -Key Ctrl+LeftArrow
    -BriefDescription RotateCCW20cm `
        -LongDescription "Rotate the drone 90 degrees Counter-CockWise" `
        -ScriptBlock {
        Move-PSTelloRotation -Socket $Socket -Direction 'CounterClockWise' -Distance 90
    }

    Set-PSReadLineKeyHandler -Key Ctrl+RightArrow
    -BriefDescription RotateCW20cm `
        -LongDescription "Rotate the drone 90 degrees CockWise" `
        -ScriptBlock {
        Move-PSTelloRotation -Socket $Socket -Direction 'ClockWise' -Distance 90
    }
    #endregion

    #region: Flip
    Set-PSReadLineKeyHandler -Key Shift+UpArrow
    -BriefDescription FlipForward `
        -LongDescription "Flip the drone forwards" `
        -ScriptBlock {
        Move-PSTelloFlip -Socket $Socket -Direction 'up'
    }

    Set-PSReadLineKeyHandler -Key Shift+DownArrow
    -BriefDescription FlipBackward `
        -LongDescription "Flip the drone backwards" `
        -ScriptBlock {
        Move-PSTelloFlip -Socket $Socket -Direction 'down'
    }

    Set-PSReadLineKeyHandler -Key Shift+LeftArrow
    -BriefDescription FlipLeft `
        -LongDescription "Flip the drone left" `
        -ScriptBlock {
        Move-PSTelloFlip -Socket $Socket -Direction 'left'
    }

    Set-PSReadLineKeyHandler -Key Shift+RightArrow
    -BriefDescription FlipRight `
        -LongDescription "Flip the drone right" `
        -ScriptBlock {
        Move-PSTelloFlip -Socket $Socket -Direction 'right'
    }
    #endregion
}
