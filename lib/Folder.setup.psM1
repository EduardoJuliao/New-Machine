function Set-Folders{
    New-Item -Path "c:\" -Name "Code" -ItemType "directory"
    New-Item -Path "c:\" -Name "Programs" -ItemType "directory"
    New-Item -Path "c:\" -Name "Downloads" -ItemType "directory"
    New-Item -Path "c:\Code" -Name "GridBeyond" -ItemType "directory"
}

Export-ModuleMember -Function * -Alias *
