Import-Module .\lib\IIS.config.ps1
Import-Module .\lib\Programs\Git.setup.ps1
Import-Module .\lib\Folder.setup.ps1

Set-Folders
Update-IIS
Set-Git