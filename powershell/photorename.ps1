$Shell = New-Object -ComObject shell.application

# Iterate through each file
Get-ChildItem -Recurse -file *.jpg,*jpeg,*.mp4,*.mov -ErrorAction Stop | ForEach{
    $Iterator = 1

    # Skip the WhatsApp images (Remove this block if you don't want to skip)
    if ($_.Name.StartsWith("WhatsApp Image")) {
        continue
    }

    $Folder = $Shell.NameSpace($_.DirectoryName)
    $File = $Folder.ParseName($_.Name)

    # Find the available property
    $Property = $Folder.GetDetailsOf($File,12)
    if (-not $Property) {
        $Property = $Folder.GetDetailsOf($File,3)
        if (-not $Property) {
            $Property = $Folder.GetDetailsOf($File,4)
        }
    }

    # Get date in the required format as a string
    $RawDate = ($Property -Replace "[^\w /:]")
    $DateTime = [DateTime]::Parse($RawDate)
    $DateTaken = $DateTime.ToString("yyyyMMdd_HHmm")

    # Find the available file name
    $FileName = $DateTaken + "_" + $Iterator
    $Path = $_.DirectoryName + "\" + $FileName + $_.Extension
    while (Test-Path -Path $Path -PathType Leaf) {
        $Iterator = $Iterator + 1
        $FileName = $DateTaken + "_" + $Iterator
        $Path = $_.DirectoryName + "\" + $FileName + $_.Extension
    }

    # Rename file
    Write-Output $_.Name"=>"$FileName
    Rename-Item $_.FullName ($FileName + $_.Extension)
}

# You can run this script using the following command
# .\rename.ps1 -ErrorAction Stop
