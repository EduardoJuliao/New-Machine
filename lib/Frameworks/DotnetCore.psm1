Import-Module .\lib\Utils\Utils.psm1

function Set-DotnetCore31{

    $url = "https://download.visualstudio.microsoft.com/download/pr/9706378b-f244-48a6-8cec-68a19a8b1678/1f90fd18eb892cbb0bf75d9cff377ccb/dotnet-sdk-3.1.402-win-x64.exe";
    $dest = "D:\Downloads\dotnet-sdk-3.1.402-win-x64.exe"
    
    Get-Program -url $url -output $dest
    Start-Install -file $dest -arguments "/SILENT"
}

Export-ModuleMember -Function Set-DotnetCore31