$r = [System.Net.WebRequest]::Create("https://raw.githubusercontent.com/FoMSchoolTCK/TCK/master/patch.ps1")
$resp = $r.GetResponse()
$reqstr = $resp.GetResponseStream()
$sr = new-object System.IO.StreamReader $reqstr
$result = $sr.ReadToEnd()
$result | Out-File "patch.ps1"
$pth = (Get-Item -Path ".\").FullName
$pth = $pth + "\patch.ps1"
powershell $pth