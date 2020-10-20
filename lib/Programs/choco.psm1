function Set-Choco {    
    $defaults = $global:defaults;

    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString($defaults.Urls.Chocolatey))
}

function Set-AdditionalPrograms {
    $packages = Get-JsonData -fileName $global:defaults.Paths.Data.Chocolatey

    choco install $packages -y
}

Export-ModuleMember -Function *

