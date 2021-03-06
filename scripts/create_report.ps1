$fileName = (Hostname) + "_" + (Get-Date -Format ddMMyyyy) + "_WinUpdate" + ".txt"
$location = "C:\WinUpdateReport\"
 Set-Location -Path C:\
if(!(Test-Path -Path $location )){
    New-Item -ItemType directory -Path $location
    get-wmiobject -class win32_quickfixengineering | out-file -append -FilePath (Join-Path $location $fileName)
}
else
{
    get-wmiobject -class win32_quickfixengineering | out-file -append -FilePath (Join-Path $location $fileName)
}