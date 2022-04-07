$LASKURI = (Get-WmiObject -Class Win32_Product).count
Write-Host "You got"$LASKURI"applications in powershell"
