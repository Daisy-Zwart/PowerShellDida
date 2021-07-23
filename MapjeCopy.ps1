#New-Item -Path C:\map1 -ItemType directory
#New-Item -Path C:\map2 -ItemType directory
#1..10 | % {New-Item -path C:\map2\$_.txt}
#$naam = read-host

___________________________________________________________________________________________

[System.Windows.MessageBox]::Show('Welkom bij de mappendans')


Add-Type -AssemblyName Microsoft.VisualBasic
$NaamVraag = [Microsoft.VisualBasic.Interaction]::InputBox('Van welke map heb je data nodig?', 'Mapnaam', "$naammap")



$map = 'C:\' + $naamvraag

$map


if($naamvraag -ne 'map1' -or $NaamVraag -ne 'map2')
{



    [System.Windows.MessageBox]::Show('Deze map bestaat niet, er zal eerst een nieuwe map worden aangemaakt')
    New-Item -Path $map -ItemType directory
    1..10 | % {New-Item -path ($map +'\' + $_ +'.txt')}




}



Add-Type -AssemblyName Microsoft.VisualBasic
$Target = [Microsoft.VisualBasic.Interaction]::InputBox('Jij koos ' + $map + ' Naar welke targetmap moet de inhoud van ' + $map + ' worden gekopieerd?', 'Targetnaam', "$Taget2")
$TargetPath = 'C\' + $target


if($target -ne EXISTING MAP)
{



    [System.Windows.MessageBox]::Show('Deze map bestaat niet, er zal eerst een nieuwe map worden aangemaakt')
    New-Item -Path $target -ItemType directory
    



}





$msgBoxInput =  [System.Windows.MessageBox]::Show('WAARSCHUWING; wil je de data echt verplaatsen?','Move MapInhoud','YesNoCancel','Error')

  switch  ($msgBoxInput) 
  {

    'Yes' {

            [System.Windows.MessageBox]::Show('De bestanden uit ' + $map + 'zullen worden gekopieerd naar' + $targetpath)
    
            Get-ChildItem -Path $map -Include *.txt | move-item -destination $targetpath

          }

    'No' {

            [System.Windows.MessageBox]::Show('De bestanden uit $map worden niet verplaatst naar $targetpath')
    

        }

  'Cancel' {

  ## Niks

  }

  }
