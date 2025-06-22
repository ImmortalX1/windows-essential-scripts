param (
    [Parameter(Mandatory=$true)]
    [string]$Directory,

    [string]$Extension = "*"
)

# Check if directory exists
if (-Not (Test-Path -Path $Directory)) {
    Write-Host "The specified directory does not exist." -ForegroundColor Red
    exit
}

# Normalize extension input
if ($Extension -ne "*") {
    if ($Extension -notmatch "^\.") {
        $Extension = ".$Extension"
    }
}

# Get all matching files
$files = Get-ChildItem -Path $Directory -File | Where-Object {
    $_.Extension -eq $Extension -or $Extension -eq "*"
} | Sort-Object Name

$totalFiles = $files.Count

if ($totalFiles -eq 0) {
    Write-Host "No files found with extension '$Extension' in $Directory." -ForegroundColor Yellow
    exit
}

# Calculate padding length
$paddingLength = $totalFiles.ToString().Length

# Begin renaming
$counter = 1
foreach ($file in $files) {
    $paddedNumber = $counter.ToString("D$paddingLength")
    $newName = "$paddedNumber$($file.Extension)"
    $newPath = Join-Path -Path $file.DirectoryName -ChildPath $newName

    if (-Not (Test-Path $newPath)) {
        Rename-Item -Path $file.FullName -NewName $newName
    } else {
        Write-Host "Skipping '$($file.Name)' → '$newName' already exists." -ForegroundColor Yellow
    }

    $counter++
}

Write-Host ""
Write-Host "Renaming complete." -ForegroundColor Green
Write-Host "Directory: $Directory"
Write-Host "Total files renamed: $($counter - 1)"
Write-Host "Number format used: $paddingLength-digit (e.g., $("{0:D$paddingLength}" -f 1))"
