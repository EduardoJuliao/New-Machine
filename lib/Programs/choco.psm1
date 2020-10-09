function Set-AdditionalPrograms
{
    $packages = Get-Content -Raw -Path .\data\choco.packages.json | ConvertFrom-Json

    choco install $packages -y
}

Export-ModuleMember -Function Set-AdditionalPrograms

