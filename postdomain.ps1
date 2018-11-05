# Run this after the machine reboot and check the output for errors

dcdiag
Get-Service adws,kdc,netlogon,dns
Get-smbshare
#Editing for lab2