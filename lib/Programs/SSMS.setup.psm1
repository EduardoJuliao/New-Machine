Import-Module $PSScriptRoot\..\Utils\Utils.psm1

function Set-SSMS{
    $defaults = $global:defaults;

    $url = $defaults.Urls.SSMS;
    $dest = Get-DonwloadPath -fileName $defaults.Files.SSMS
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "-q"
}

Export-ModuleMember -Function Set-SSMS