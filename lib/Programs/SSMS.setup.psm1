Import-Module .\lib\Utils\Utils.psm1

function Set-SSMS{

    $url = "https://aka.ms/ssmsfullsetup";
    $dest = "D:\Downloads\SSMS-Setup-ENU.exe"
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/QUIET"
}

Export-ModuleMember -Function Set-SSMS