Import-Module $PSScriptRoot\..\Utils\Utils.psm1

function Set-SqlServer {
    $defaults = $global:defautls;

    $url = $defaults.Urls.SqlServer;
    $dest = Get-DonwloadPath -fileName $defaults.Files.SqlServer
    $configFile = Resolve-Path .\data\SqlServer.setup.ini;
    $sqlIso = Get-DonwloadPath -fileName $defaults.Files.SqlServerIsp
    $serverInstall = $defaults.Paths.SqlServerInstall;


    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/QUIET /ConfigureationFile=$configFile /MediaPath=$sqlIso /Action=Install /IACCEPTSQLSERVERLICENSETERMS /InstallPath=$serverInstall"
    
}

Export-ModuleMember -Function Set-SqlServer
