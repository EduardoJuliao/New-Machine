function Set-Choco {
    
    $defaults = $global:defaults;

    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString($defaults.Urls.Chocolatey))
}

function Set-AdditionalPrograms {
    $packages = Get-JsonData -fileName $global:defaults.Paths.Data.Chocolatey

    choco install $packages -y
}

Export-ModuleMember -Function *

