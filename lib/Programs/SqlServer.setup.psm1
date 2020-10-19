Import-Module ..\lib\Utils\Utils.psm1

function Set-SqlServer{

    $mediaPath="c:\Downloads"
    $url = "https://go.microsoft.com/fwlink/?linkid=866662";
    $dest = "$mediaPath\SQL2019-SSEI-Dev.exe"
    $configFile = Resolve-Path .\data\SqlServer.setup.ini;    
    $sqlIsoPath = "c:\Downloads\SQL";
    $sqlIso = "$sqlIsoPath\SQLServer2019-x64-ENU-Dev.iso"
    $serverInstall = "C:\Program Files\Microsoft SQL Server";


    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/QUIET /ConfigureationFile=$configFile /MediaPath=$sqlIso /Action=Install /IACCEPTSQLSERVERLICENSETERMS /InstallPath=$serverInstall"
    Write-Host "Sql Server configured"
    Write-Host "Server Name    : Localhost"
    Write-Host "Authentication Type: Trusted" 
}

Export-ModuleMember -Function Set-SqlServer
