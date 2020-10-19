function Set-AdditionalPrograms {
    
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    $dataFile = Resolve-Path ..\..\data\choco.packages.json

    $packages = Get-Content -Raw -Path $dataFile  | ConvertFrom-Json

    choco install $packages -y
}

Export-ModuleMember -Function Set-AdditionalPrograms

