Import-Module ..\lib\Utils\Utils.psm1

function Set-SSMS{

    $url = "https://aka.ms/ssmsfullsetup";
    $dest = "c:\Downloads\SSMS-Setup-ENU.exe"
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "-q"
}

Export-ModuleMember -Function Set-SSMS