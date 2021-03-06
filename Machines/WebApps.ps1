Import-Module .\lib\IIS.config.psm1

# Configure Web Application
$webApps =Get-Content -Raw -Path .\data\webapps.packages.json | ConvertFrom-Json

foreach ($webapp in $webApps) {
    Add-Certificate -hostname $webapp.HostName
    Add-WebPortal -hostname $webapp.HostName -appPoolName $webapp.AppPoolName -iisSiteName $webapp.IISSiteName -webAppPath $webapp.PyshicalPath
}