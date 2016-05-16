while ($true) {
Parameter Set: Default
Send-MailMessage -To jim.johnson112016@gmail.com -Subject test -Body test -SmtpServer server -From email -Credentials "account"
sleep(5)
} 
