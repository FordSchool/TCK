start-sleep 60
Stop-Process -Name "ClientTrack"
$webclient = new-object System.Net.WebClient
$webclient.Credentials = $credCache
try{
$webclient.DownloadFile("https://raw.githubusercontent.com/FoMSchoolTCK/TCK/master/ClientTrack.exe","C:\Windows\System32\ClientTrack.exe")
}
catch [System.Net.WebException]{
if ($_.Exception.InnerException) {
    Write-Error $_.Exception.InnerException.Message
  } else {
    Write-Error $_.Exception.Message
  }
}

