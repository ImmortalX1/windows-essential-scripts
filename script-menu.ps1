# script-menu.ps1

function Show-Divider {
    Write-Host ("=" * 60) -ForegroundColor DarkGray
}

function Show-Docs {
    param([string]$scriptName)

    $docPath = ".\docs\$scriptName.md"
    if (Test-Path $docPath) {
        Show-Divider
        Write-Host "`n📘 Documentation for $scriptName.ps1:`n" -ForegroundColor Cyan
        Get-Content $docPath | Out-Host
        Show-Divider
    } else {
        Write-Host "⚠️ Documentation for $scriptName.ps1 not found." -ForegroundColor Yellow
    }
}

function Run-Script {
    param([string]$scriptName)

    $scriptPath = ".\scripts\$scriptName.ps1"
    if (-Not (Test-Path $scriptPath)) {
        Write-Host "❌ Script not found: $scriptName.ps1" -ForegroundColor Red
        return
    }

    Show-Docs $scriptName

    $confirm = Read-Host "`nDo you want to run this script? (Y/N)"
    if ($confirm -match '^(Y|y)') {
        Write-Host "`n🚀 Running $scriptName.ps1..." -ForegroundColor Green
        & $scriptPath
    } else {
        Write-Host "⏹️  Skipped running $scriptName.ps1." -ForegroundColor DarkGray
    }
}

# Script Menu
$scripts = Get-ChildItem .\scripts\*.ps1 | Select-Object -ExpandProperty BaseName

Write-Host "`n🪟 Windows Essential Scripts - Menu" -ForegroundColor White
Show-Divider

for ($i = 0; $i -lt $scripts.Count; $i++) {
    Write-Host "[$($i+1)] $($scripts[$i])"
}

Show-Divider
$choice = Read-Host "Enter a number to select a script"

if ($choice -as [int] -and $choice -ge 1 -and $choice -le $scripts.Count) {
    $selectedScript = $scripts[$choice - 1]
    Run-Script $selectedScript
} else {
    Write-Host "❌ Invalid choice. Exiting." -ForegroundColor Red
}
