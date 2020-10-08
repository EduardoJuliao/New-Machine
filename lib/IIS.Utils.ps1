function Add-WebPortal {
    param (
        [String]$hostname,
        [String]$appPoolName,
        [String]$iisSiteName,
        [String]$webAppPath
    )
    
    # Create App Pool
    New-WebAppPool -name $appPoolName  -force

    $appPool = Get-IISAppPool $appPoolName 
    $appPool.processModel.identityType = "NetworkService"
    $appPool.enable32BitAppOnWin64 = 1

    # Create Customer Portal

    $site = $site = new-WebSite -name $iisSiteName -PhysicalPath $webAppPath -ApplicationPool $appPoolName -HostHeader $hostname -force

    $certificate = Get-ChildItem Cert:\LocalMachine\My | Where-Object {$_.DnsNameList -eq $hostname }

    New-WebBinding -Name $iisSiteName -IP "*" -Port 443 -Protocol https -HostHeader $hostname
    New-Item -Path "IIS:\SslBindings\*!443!$hostname" -Thumbprint $certificate.Thumbprint -SSLFlags 1

    $binding = Get-WebBinding -Name $iisSite -Protocol "https"
    $binding.AddSslCertificate($certificate.GetCertHashString(), "my")
    $site.Start();

    # Update host file
    If ((Get-Content "$($env:windir)\system32\Drivers\etc\hosts" ) -notcontains "127.0.0.1 $hostname")   
    {
        Add-Content -Encoding UTF8  "$($env:windir)\system32\Drivers\etc\hosts" "`n127.0.0.1 $hostname" 
    }
    else {
        Write-host "Host file already configured." -BackgroundColor Yellow
    }
}

function Add-Certificate{
    param(
        [String]$hostname
    )
    
    # Create SSL
    $cert = Get-ChildItem -Path Cert:\LocalMachine\My | Where-Object {$_.DnsNameList -eq $hostname }

    if(!$cert)
    {
        New-SelfSignedCertificate -dnsname $hostname -KeyLength 2048 -CertStoreLocation cert:\LocalMachine\My 
    }
}

Export-ModuleMember -Function *