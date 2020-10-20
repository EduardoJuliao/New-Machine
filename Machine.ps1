$global:defaults = Get-Content (Resolve-Path .\data\defaults.json) | ConvertFrom-Json

#Base
Import-Module .\lib\Folder.setup.psm1
Import-Module .\lib\powershell.commands.psm1
Import-Module .\lib\Programs\choco.psm1

# Enviornment
Import-Module .\lib\Frameworks\DotnetCore.psm1
Import-Module .\lib\Programs\Git.setup.psm1
Import-Module .\lib\Programs\Node.setup.psm1
Import-module .\lib\Frameworks\npm.setup.psm1
Import-Module .\lib\Programs\SqlServer.setup.psm1
Import-Module .\lib\IIS.config.psm1

# Programs
Import-Module .\lib\Programs\ssms.setup.psm1

# Base
Set-Folders
Set-PSCommands
Set-Choco

# Enviornment
Set-DotnetCore31 
Set-Git
Set-Node
Set-NpmPackages
Set-SqlServer
Update-IIS

# Programs
Set-SSMS
Set-AdditionalPrograms