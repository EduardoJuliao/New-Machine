function Set-NpmPackages {
    $packages = Get-JsonData -fileName $global:defaults.Paths.Data.Npm

    npm install -g $packages
}

Export-ModuleMember -Function *