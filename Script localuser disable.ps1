'Welke user wil je zien?'
$LocalUser = Read-Host
$LocalUserobject Get-LocalUser -name $LocalUser
if ($LocalUser.enabled -eq $true) {
Disable-LocalUser $LocalUserObject.name
}
 