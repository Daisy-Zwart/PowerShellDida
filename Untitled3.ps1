$Array = @('Jan' , 'John' , 'Kees' , 'Koos' )
$Array[0] + ' Kijkt geen EK omdat Nederland niet meedoet'
$Array[1] + ' Kijkt geen EK omdat Nederland niet meedoet'
$Array[2] + ' Kijkt geen EK omdat Nederland niet meedoet'
$Array[3] + ' Kijkt geen EK omdat Nederland niet meedoet'

$LocalArray = Get-LocalUser
$LocalArray
'Dit is ' + $LocalArray[0]
'Dit is ' + $LocalArray[1]
'Dit is ' + $LocalArray[2]
'Dit is ' + $LocalArray[3]
'Dit is ' + $LocalArray[4]
'Dit is ' + $LocalArray[5]
'Dit is ' + $LocalArray[6]
'Dit is ' + $LocalArray[7]

$LocalArray


foreach ($whatever in $LocalArray)

{

    'Dit is ' + $whatever.Name


}

 