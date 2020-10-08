function Set-Folders{
    New-Item -Path "d:\" -Name "Code" -ItemType "directory"
    New-Item -Path "d:\" -Name "Programs" -ItemType "directory"
    New-Item -Path "d:\" -Name "Downloads" -ItemType "directory"
    New-Item -Path "d:\Code" -Name "GridBeyond" -ItemType "directory"
}

Export-ModuleMember -Function * -Alias *
