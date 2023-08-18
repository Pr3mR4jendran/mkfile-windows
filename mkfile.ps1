param (
    [string]$fname,
    [int]$size
)

if (-not ($size -and $fname)) {
    Write-Host ""
    Write-Host "Usage: mkfile -size <size> -fname <fname>"
    Write-Host ""
    Write-Host ".SYNOPSIS"
    Write-Host "Creates a dummy file with the specified size and name in the current directory."
    Write-Host ""
    Write-Host ".DESCRIPTION"
    Write-Host "This script creates a dummy file with random content of the specified size and name in the current directory."
    Write-Host ""
    Write-Host ".PARAMETER size"
    Write-Host "The size of the dummy file in bytes."
    Write-Host ""
    Write-Host ".PARAMETER fname"
    Write-Host "The name (with extension) of the dummy file."
    Write-Host ""
    Write-Host ".EXAMPLE"
    Write-Host "mkfile -size 1048576 -fname mydummyfile.txt"
    Write-Host ""
    Write-Host "This example creates a dummy file named mydummyfile.txt with a size of 1048576 bytes in the current directory."
    Write-Host ""
    exit
}

$out = New-Object byte[] $size
(New-Object Random).NextBytes($out)

$fileName = $fname
$fullFilePath = Join-Path $PSScriptRoot $fileName

[IO.File]::WriteAllBytes($fullFilePath, $out)

if (Test-Path $fullFilePath) {
    Write-Host ("Dummy file '$fullFilePath' successfully created")
} else {
    Write-Host "Failed to create dummy file"
}
