$global:TestDrive = "$env:Temp\pester"

function Setup([switch] $Dir, [switch] $File, $Path, $Content = "") {
    New-Item -Name pester -Path $env:Temp -Type Container -Force | Out-Null

    if ($Dir) {
        New-Item -Name $Path -Path $TestDrive -Type Container -Force | Out-Null   
    } elseif ($File) {
        $Content | New-Item -Name $Path -Path $TestDrive -Type File -Force | Out-Null
    }
}
