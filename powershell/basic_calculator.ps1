$eka = Read-Host "Give the first integer"
$toka = Read-Host "give the second integer"
$eka = [int]($eka)
$toka = [int]($toka)
$summa = $eka + $toka
$sub = $eka - $toka
$multi = $eka * $toka
$divi = $eka / $toka
Write-Host "Sum is" $summa
Write-Host "Subtraction is" $sub
Write-Host "Multiplication is" $multi
Write-Host "Division is" $divi
