$folder = "c:\temp"
$log = "c:\temp\AzureLog.txt"
$date = get-date

if (!(Test-Path $log)) {
    New-Item -Path $folder -ItemType Directory
    New-Item -Path $log -ItemType File
    Add-Content -Value "NEW LOG: Azure PowerShell Endpoint - $date" -Path $log
 }
else {
    Add-Content -Value "EXSISITNG LOG: Azure PowerShell Endpoint - $date" -Path $log
}
mv C:\inetpub\wwwroot\Web.config C:\inetpub\Azure\Web.config.onprem
mv C:\inetpub\Azure\Web.config.azure C:\inetpub\wwwroot\Web.config
