Import-Module .\lib\Utils\Utils.psm1

function Set-Git{

    $url = "https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-64-bit.exe";
    $dest = "D:\Downloads\Git-2.28.0-64-bit.exe"
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/SILENT"
}

Export-ModuleMember -Function Set-Git