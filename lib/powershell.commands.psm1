function Get-ModuleSourcePath{
    param(
        $moduleName
    )

    return Join-Path $global:defaults.Paths.Modules.Source.Base $moduleName
}

function Set-PSCommands{
    $defaults = $global:defaults

    $modulesSource = $defaults.Paths.Modules.Source
    $destPath = $defaults.Paths.Modules.Destination

    $sqlServer = Get-ModuleSourcePath -moduleName $modulesSource.SqlServerDsc
    $poshGit = Get-ModuleSourcePath -moduleName $modulesSource.PoshGit

    Copy-Item -Path $sqlServer  -Destination $destPath  -Recurse
    Copy-Item -Path $poshGit -Destination $destPath  -Recurse
    
}

Export-ModuleMember -Function Set-PSCommands