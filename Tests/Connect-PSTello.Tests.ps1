#requires -Modules Pester

$ScriptName = "Connect-PSTello"

$here = (Split-Path -Parent $MyInvocation.MyCommand.Path)

Describe $ScriptName {

    BeforeAll {
        $(Get-ChildItem $here\..\src\public) + $(Get-ChildItem $here\..\src\private) | ForEach-Object { . $_.fullname }
    }

    It "should return a new Socket" {
        Connect-PSTello | Should -BeOfType [System.Net.Sockets.Socket]
    }

    Mock -CommandName 'Send-PSTelloCommand' -ParameterFilter { $socket.GetType() -eq [System.Net.Sockets.Socket] -and $Command -eq 'command' } {
        return '7'
    }
    It "should send 'command' to the UDP endpoint" {
        $null = Connect-PSTello

        Assert-MockCalled -CommandName 'Send-PSTelloCommand' -Times 1
    }
}
