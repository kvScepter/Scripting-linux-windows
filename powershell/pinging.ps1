param (
    [string]$ipaddress = '192.168.8.1',
    [int]$attempt = 1
)

Write-Host "I will ping address $ipaddress $attempt times, okay?"
$confirmation = Read-Host "[y/n]"
if ($confirmation -eq "y") {

    for ($i = 0; $i -lt $attempt; $i++)
    { Write-Output("attempt number: " + ($i + 1) + " pinging ip address: " + $ipaddress) }
}
elseif ($confirmation -eq "n") {
    break
        
}

