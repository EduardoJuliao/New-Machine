Import-Module $PSScriptRoot\..\Utils\Utils.psm1

function Set-Node{
    $defaults = $global:defaults;

    $url = $defaults.Urls.Node;
    $dest = Get-DonwloadPath -fileName $defaults.Files.Node

    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/QUIET"
}

Export-ModuleMember -Function Set-Node