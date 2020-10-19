
function Set-PSCommands{
    Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force

    Copy-Item -Path ..\modules\SqlServerDsc -Destination "C:\Program Files\WindowsPowerShell\Modules" -Recurse
    Copy-Item -Path ..\modules\posh-git -Destination "C:\Program Files\WindowsPowerShell\Modules" -Recurse
    
}

Export-ModuleMember -Function Set-PSCommands