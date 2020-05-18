Set-StrictMode -Version Latest

$to = "@myslackaccount"
$username = "My username"
$message = "Your message"

$myJSON = @{
	"channel" = $to;
	"text" = $message;
	"username" = $username;
}

Invoke-WebRequest `
	-Uri "webhook url" `
	-Method "POST" `
	-Body (ConvertTo-Json -Compress -InputObject $myJSON )
