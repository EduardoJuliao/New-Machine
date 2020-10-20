function Set-Folder{
    param(
        $path,
        $name
    )

    if (-not(Test-Path $path)) {
        New-Item -Path $path -ItemType "directory"
        Write-Host "Created '$name' folders! Path: " + $path
    }else{
        Write-Host "$name folder already exists!"
    }

}


function Set-Folders {
    $path = $global:defaults.Paths

    Set-Folder -path $path.Code -name "Code"
    Set-Folder -path $path.Programs -name "Programs"
    Set-Folder -path $path.Downloads -name "Downloads"
    Set-Folder -path $path.GridBeyond -name "GridBeyond"
}

Export-ModuleMember -Function Set-Folders -Alias *
