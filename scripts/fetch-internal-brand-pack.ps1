# Reads brand/brand-source.json and opens the internal brand source folder.
# Keep this script ASCII-only. Localized path text lives in the UTF-8 JSON file.

$ErrorActionPreference = 'Stop'

$Root = Split-Path -Parent $PSScriptRoot
$ConfigPath = Join-Path $Root 'brand\brand-source.json'

if (-not (Test-Path -LiteralPath $ConfigPath)) {
  throw "Missing brand source config: $ConfigPath"
}

$Config = Get-Content -LiteralPath $ConfigPath -Raw -Encoding UTF8 | ConvertFrom-Json
$Source = $Config.source_root_unc

if (-not (Test-Path -LiteralPath $Source)) {
  Write-Host "Internal brand source is not reachable from this network."
  Write-Host $Source
  exit 2
}

Write-Host "Internal brand source is reachable:"
Write-Host $Source
Write-Host ""
Write-Host "Open the folder, select authorized assets, and copy them to:"
Write-Host (Join-Path $Root $Config.local_target)

Start-Process -FilePath explorer.exe -ArgumentList $Source
