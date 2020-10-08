Import-Module .\lib\Folder.setup.psM1
Import-Module .\lib\IIS.config.ps1
Import-Module .\lib\Programs\Git.setup.psm1
Import-Module .\lib\Programs\Node.setup.psm1
Import-Module .\lib\Programs\ssms.setup.psm1


Set-Folders
Update-IIS
Set-Git
Set-Node
Set-SSMS