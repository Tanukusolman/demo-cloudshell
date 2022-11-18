write-host "Hello World"
Invoke-WebRequest -Uri https://github.com/Tanukusolman/demo-cloudshell.git/demo-cloudshell/master/helloworld.ps1 -OutFile .\helloworld.ps1; .\helloworld.ps1
