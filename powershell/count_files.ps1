Write-Host (Get-ChildItem $HOME | Measure-Object).Count "Files found at" $HOME
