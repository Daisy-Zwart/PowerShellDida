New-Item -Path C:\UsersForPowershell -ItemType directory
New-Item -Path C:\UsersForPowershell\Names.txt
Add-content -Path C:\UsersForPowershell\Names.txt -Value 'Peter' , 'Linda' , 'Jan' , 'Marie'

$ArrayUsers = Get-Content -Path C:\UsersForPowershell\Names.txt

$SecurePassword = ConvertTo-SecureString -string 'P@ssw0rd' -Asplaintext -Force

$NewLocalUser = New-LocalUser -Description 'test' -Password $SecurePassword

$NewLocalUser 


foreach ($hopsa in $ArrayUsers)

{

    $NewLocalUser


}
