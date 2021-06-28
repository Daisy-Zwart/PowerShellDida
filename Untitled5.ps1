$ArrayUsers = Get-Content -Path C:\UsersForPowershell\Names.txt
foreach ($hopsa in $ArrayUsers)

{
    $SecurePassword = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
    New-LocalUser -Name $hopsa -Description 'sales' -Password $SecurePassword


}
