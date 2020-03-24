# Determine script location for PowerShell
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$DotfilesRoot = Split-Path -parent $ScriptDir
Write-Host "Current script directory is $DotfilesRoot"

$ProfilesPathRelative = "AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\profiles.json"
$ProfilesPathAbsolute = Join-Path -Path $env:USERPROFILE -ChildPath $ProfilesPathRelative

$ProfilesPathDotfiles = Join-Path $DotfilesRoot "\config-files\windows\userdir\" $ProfilesPathRelative
Write-Host $ProfilesPathDotfiles

Remove-Item $ProfilesPathAbsolute -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $ProfilesPathAbsolute -Target $ProfilesPathDotfiles
