Import-Module $PSScriptRoot\..\Utils\Utils.psm1

function Set-DotnetCore31{
    $defaults = $global:defaults;

    $url = $defaults.Urls.DotnetCore31;
    $dest = Get-DonwloadPath -fileName $defaults.Files.DotnetCore31
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/SILENT"
}

Export-ModuleMember -Function Set-DotnetCore31