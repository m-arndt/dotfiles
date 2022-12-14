# Determine script location for PowerShell
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$DotfilesRoot = Split-Path -parent $ScriptDir
Write-Host "Current script directory is $DotfilesRoot"

$UserSettings = "$env:USERPROFILE\AppData\Roaming\Code\User\settings.json"

Move-Item -Path $UserSettings -Destination "$env:USERPROFILE\Desktop\win-terminal-old-config.json"
Remove-Item $UserSettings -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $UserSettings -Target $DotfilesRoot\data\all\home\username\.config\Code\User\settings.json

foreach ($line in Get-Content $DotfilesRoot\data\misc\vscode_extensions){
    code --install-extension $line
}