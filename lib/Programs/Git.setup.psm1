Import-Module $PSScriptRoot\..\Utils\Utils.psm1

function Set-Git{
    $defaults = $global:defaults;

    $url = $defaults.Urls.Git;
    $dest = Get-DonwloadPath -fileName $defaults.Files.Git
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/SILENT"
}

Export-ModuleMember -Function Set-Git