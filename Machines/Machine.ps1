Import-Module ..\lib\Folder.setup.psm1
Import-Module ..\lib\IIS.config.psm1
Import-Module ..\lib\Programs\Git.setup.psm1
Import-Module ..\lib\Programs\Node.setup.psm1
Import-Module ..\lib\Programs\ssms.setup.psm1
Import-Module ..\lib\Programs\choco.psm1
Import-Module ..\lib\Frameworks\DotnetCore.psm1
Import-module ..\lib\Frameworks\npm.setup.psm1
Import-Module ..\lib\powershell.commands.psm1
Import-Module ..\lib\Programs\SqlServer.setup.psm1

# Base
Set-Folders
Set-PSCommands
Set-AdditionalPrograms

## Enviornment
Set-DotnetCore31 
Update-IIS

# Programs
Set-Git
Set-Node
Set-SSMS
Set-AdditionalPrograms
Set-NpmPackages
Set-SqlServer