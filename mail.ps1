while ($true) {
Send-MailMessage -To jim.johnson112016@gmail.com -Subject test -Body test -SmtpServer server -From email -Credential "account"
sleep(5)
} 
