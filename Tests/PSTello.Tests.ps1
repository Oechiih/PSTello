Import-Module $PSScriptRoot\..\BuildOutput\PSTello.psd1 -Force

Describe 'Connect to UDP endpoint' {
    Context 'Connecting socket'{
        It "should return a new Socket" {
            Connect-PSTello | Should -BeOfType [System.Net.Sockets.Socket]
        }
    }
}

Describe 'Enable SDK mode' {
    Context -Name 'Connecting to drone' {
        Mock -CommandName 'Send-PSTelloCommand' -ModuleName 'PSTello' -ParameterFilter {$socket.GetType() -eq [System.Net.Sockets.Socket] -and $Command -eq 'command'} {
            return '7'
        }
        It "should send 'command' to the UDP endpoint" {
            $socket = Connect-PSTello

            Assert-MockCalled -CommandName 'Send-PSTelloCommand' -ModuleName 'PSTello' -Times 1
        }
    }
}
