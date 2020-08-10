# Determine script location for PowerShell
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$DotfilesRoot = Split-Path -parent $ScriptDir
Write-Host "Current script directory is $DotfilesRoot"

$ProfilesPathRelative = "AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\profiles.json"
$ProfilesPathAbsolute = Join-Path -Path $env:USERPROFILE -ChildPath $ProfilesPathRelative

$ProfilesPathDotfiles = Join-Path $DotfilesRoot "\data\windows\userdir\" $ProfilesPathRelative
Write-Host $ProfilesPathDotfiles

#TODO better solution for this that doesnt inhibit both the syncing and the reloading of the config in windows terminal

Copy-Item -Path $ProfilesPathDotfiles -Destination $ProfilesPathAbsolute

#Remove-Item $ProfilesPathAbsolute -ErrorAction Ignore

#Windows Terminal doesnt reload the settings if the file change date hasnt changed so this solution is suboptimal
#New-Item -ItemType SymbolicLink -Path $ProfilesPathAbsolute -Target $ProfilesPathDotfiles
