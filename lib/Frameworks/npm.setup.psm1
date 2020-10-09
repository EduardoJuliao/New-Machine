function Set-NpmPackages {
    $packages = Get-Content -Raw -Path .\data\npm.packages.json | ConvertFrom-Json

    npm install -g $packages
}

Export-ModuleMember -Function *