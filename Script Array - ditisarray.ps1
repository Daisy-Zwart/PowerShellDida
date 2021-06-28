$Array = @('Jan' , 'John' , 'Kees' , 'Koos' )
$Array[0] + ' Kijkt geen EK omdat Nederland niet meedoet'
$Array[1] + ' Kijkt geen EK omdat Nederland niet meedoet'
$Array[2] + ' Kijkt geen EK omdat Nederland niet meedoet'
$Array[3] + ' Kijkt geen EK omdat Nederland niet meedoet'

$LocalArray = Get-LocalUser
$LocalArray
'Dit is ' + $LocalArray[0].Name
'Dit is ' + $LocalArray[1].Name
'Dit is ' + $LocalArray[2].Name
'Dit is ' + $LocalArray[3].Name
'Dit is ' + $LocalArray[4].Name
'Dit is ' + $LocalArray[5].Name
'Dit is ' + $LocalArray[6].Name

$LocalArray


foreach ($whatever in $LocalArray)

{

    'Dit is ' + $whatever.Name


}

 