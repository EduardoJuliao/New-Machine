Import-Module .\lib\Utils\Utils.psm1

function Set-Node{

    $url = "https://nodejs.org/dist/v12.19.0/node-v12.19.0-x64.msi";
    $dest = "D:\Downloads\node-v12.19.0-x64.msi"
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/QUIET"
}

Export-ModuleMember -Function Set-Node