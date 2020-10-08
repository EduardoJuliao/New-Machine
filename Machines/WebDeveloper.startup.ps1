Import-Module .\lib\IIS.config.ps1
Import-Module .\lib\Programs\Git.setup.ps1
Import-Module .\lib\Folder.setup.ps1

Set-Folders
Update-IIS


# Configure Web Application
$hostname = "localhost.gridbeyond.com"
$appPoolName = "CustomerPortalPool"
$iisSiteName = "CustomerPortal"
$webAppPath = "D:\Code\Gridbeyond\Web-Portal\NetSee.CustomerPortalGit\Netsee.CustomerPortal"

Add-Certificate -hostname $hostname
Add-WebPortal -hostname $hostname -appPoolName $appPoolName -iisSiteName $iisSiteName -webAppPath $webAppPath