$ServiceObject = Get-Service -Name 'Spooler'
if ($ServiceObject.Status -eq 'running') {
    Stop-Service -Name $ServiceObject.name
}
elseif ($ServiceObject.Status -eq 'stopped') {
    Start-Service -Name $ServiceObject.name
}
Get-Service -Name $ServiceObject.Name