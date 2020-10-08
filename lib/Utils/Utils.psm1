function Get-FileName{
    param(
        [String]$destinationFile
    )
    $split = $destinationFile.Split("\")
    return $split[$split.Length - 1];
}

function Get-Program {
    param(
        [String]$url,
        [String]$output
    )
    $fileName = Get-FileName -destinationFile $dest;

    try {
        Write-Host "Downloading $fileName..." -ForegroundColor Yellow

        (New-Object System.Net.WebClient).DownloadFile($url, $output)

        Write-Host "Done!" -ForegroundColor Green
    }
    catch {
        Write-Host "An error occurred while downloading $fileName"
        Write-Host $_
    }
    
}

function Start-Install {
    param(
        [String]$file,
        [String[]]$arguments
    )
    $fileName = Get-FileName -destinationFile $dest;
    try {
        Write-Host "Installing $fileName..." -ForegroundColor Yellow

        (Start-Process -FilePath $file -ArgumentList $arguments -Wait -Passthru).ExitCode

        Write-Host "Done!" -ForegroundColor Green
    }
    catch {
        Write-Host "An error occurred while installing $fileName" -ForegroundColor Red
        Write-Host $_ -ForegroundColor Red
    }
}

Export-ModuleMember -Function Start-Install, Get-Program -Alias utils