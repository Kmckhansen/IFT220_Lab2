# brutforce script to make some organizational units

# you need to change "DC=ad,DC=KELSEYHANSEN,DC=LA" to match your domain and update the KH initials to match or remove them

Write-HoKH -ForegroundColor yellow "Creating OUs"
New-adOrganizationalUnit -Name KH_LAputers -Path "DC=ad,DC=KELSEYHANSEN,DC=LA" -Description "KH LAputers"
 New-adOrganizationalUnit -Name Workstations -Path "OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name President -Path "OU=Workstations,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name HR -Path "OU=Workstations,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name IT -Path "OU=Workstations,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
 New-adOrganizationalUnit -Name Servers -Path "OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
  New-adOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=KH_LAputers,DC=ad,DC=KELSEYHANSEN,DC=LA"
New-adOrganizationalUnit -Name KH_Groups -Path "DC=ad,DC=KELSEYHANSEN,DC=LA" -Description "High Level Security Groups"
New-adOrganizationalUnit -Name KH_Privileged_Accounts -Path "DC=ad,DC=KELSEYHANSEN,DC=LA" -Description "Privileged Accounts"
New-adOrganizationalUnit -Name KH_Users -Path "DC=ad,DC=KELSEYHANSEN,DC=LA" -Description "Non-Privileged Accounts"
Write-HoKH -ForegroundColor yellow "Done creating OUs"
Write-HoKH -ForegroundColor yellow ""

Write-HoKH -ForegroundColor yellow "Creating groups based on department"
New-adGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
New-adGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
New-adGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
New-adGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
New-adGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
New-adGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
# Create a Leadership group for the President and VPs to access restricted a file share
New-adGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=KH_Groups,DC=ad,DC=KELSEYHANSEN,DC=LA"
Write-HoKH -ForegroundColor yellow "Done creating groups"
Write-HoKH -ForegroundColor yellow ""
