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
    $fileName = Get-FileName -destinationFile $output;

    if(-not (Test-Path $fileName))
    {
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
}

function Start-Install {
    param(
        [String]$file,
        [String[]]$arguments
    )
    $fileName = Get-FileName -destinationFile $file;
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

function Get-DonwloadPath{
    param(
        $fileName
    )

    return Join-Path $defaults.Paths.Downloads $fileName
}

function Get-JsonData{
    param(
        $fileName
    )

    return Get-Content (Join-Path $defaults.Paths.Data.Base $fileName) | ConvertFrom-Json
}

Export-ModuleMember -Function Start-Install, Get-Program, Get-DonwloadPath -Alias utils