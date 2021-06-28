
$Notepad = Get-process -Name notepad

if ($Notepad.handles -gt 100) {

'Groter dan 100, alarm!' }

elseif ($Notepad.handles -lt 100) {

'Dit is kleiner dan 100, geen alarm'}
