$pwd = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$pwd\Cleanup.ps1"
. "$pwd\Setup.ps1" # Needed for the $TestDrive variable
. "$pwd\..\Pester.ps1"

Describe "When implementing filesystem tests in a fixture" {
    Setup -Dir "foo"
}

Describe "Cleanup" {

    It "should have removed the temp folder from the previous fixture" {
        $result = Test-Path $TestDrive
        $result.should.be($false)
    }
}
