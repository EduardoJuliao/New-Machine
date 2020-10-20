function Set-PSCommands{
    $destPath = $global:defaults.Paths.Modules.Destination

    Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force

    Copy-Item -Path $PSScriptRoot\modules\SqlServerDsc -Destination $destPath  -Recurse
    Copy-Item -Path $PSScriptRoot\modules\posh-git -Destination $destPath  -Recurse
    
}

Export-ModuleMember -Function Set-PSCommands