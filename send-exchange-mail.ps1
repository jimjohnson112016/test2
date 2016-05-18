$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://<exchange-server/PowerShell/ -Authentication Kerberos -Credential $UserCredential
Import-PSSession $Session

while($true){ 
??
Start-Sleep 1};
