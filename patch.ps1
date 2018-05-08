$webclient = new-object System.Net.WebClient
$credCache = new-object System.Net.CredentialCache
$creds = new-object System.Net.NetworkCredential("egonz158","BsV#5Lqt")
$credCache.Add("https://github.ford.com/", "Basic", $creds)
$webclient.Credentials = $credCache
try{
$webclient.DownloadFile("https://github.ford.com/FoMIT/FordSchools/blob/master/FordSchoolWS/ClientTrack.exe","C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\ClientTrack.exe")
}
catch [System.Net.WebException]{
if ($_.Exception.InnerException) {
    Write-Error $_.Exception.InnerException.Message
  } else {
    Write-Error $_.Exception.Message
  }
}
