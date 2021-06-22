'Van welke service wilt u de status weten?'
$ServiceName = Read-Host
$ServiceObject2 = Get-Service $ServiceName

if ($ServiceObject2.Status -eq 'running') {
    Stop-Service -Name $ServiceObject2.name
}
elseif ($ServiceObject2.Status -eq 'stopped') {
    Start-Service -Name $ServiceObject2.name
}


'De service ' + $ServiceObject2.Name + ' is ' + $ServiceObject2.Status

