function Cleanup() {
    if (Test-Path $TestDrive) {
        Remove-Item $TestDrive -Recurse -Force
    }
}
