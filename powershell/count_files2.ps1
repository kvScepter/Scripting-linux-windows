$ETSI = Read-Host "Please, give the folder to search"

Write-Host (Get-ChildItem $ETSI | Measure-Object).Count "Files found at" $ETSI
