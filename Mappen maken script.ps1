New-Item -Path C:\Mappen.txt
Add-content -Path C:\Mappen.txt -Value 'C:\Map1' , 'C:\Map2' , 'C:\Map3'

$Mappen = Get-Content -Path C:\Mappen.txt

Foreach ($Plopsa in $Mappen)

{
    
    New-Item -Path $Plopsa -ItemType directory

}
