# Prepare a public-template export without official Dingxi brand image files.
# Keep this script ASCII-only. Localized text lives in Markdown/JSON files.

$ErrorActionPreference = 'Stop'

$Root = Split-Path -Parent $PSScriptRoot
$Out = Join-Path $Root '_public-template'

if (Test-Path -LiteralPath $Out) {
  Remove-Item -LiteralPath $Out -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $Out | Out-Null

$IncludeDirs = @(
  'site',
  'site-plan',
  'flow-packs',
  'brand',
  'assets',
  'scripts'
)

foreach ($dir in $IncludeDirs) {
  $src = Join-Path $Root $dir
  if (Test-Path -LiteralPath $src) {
    Copy-Item -LiteralPath $src -Destination (Join-Path $Out $dir) -Recurse -Force
  }
}

foreach ($file in @('README.md', 'public-template-policy.md')) {
  $src = Join-Path $Root $file
  if (Test-Path -LiteralPath $src) {
    Copy-Item -LiteralPath $src -Destination (Join-Path $Out $file) -Force
  }
}

$BrandOut = Join-Path $Out 'assets\brand'
New-Item -ItemType Directory -Force -Path $BrandOut | Out-Null

$OfficialFiles = @(
  'dingxi-crest.png',
  'four-mascots-reference.png',
  'admin-workbench-banner.webp',
  'admin-action-banner.webp'
)

foreach ($name in $OfficialFiles) {
  $target = Join-Path $BrandOut $name
  if (Test-Path -LiteralPath $target) {
    Remove-Item -LiteralPath $target -Force
  }
}

$Replacements = @{
  '../assets/brand/dingxi-crest.png' = '../assets/brand/placeholder-school-crest.svg'
  '../../assets/brand/dingxi-crest.png' = '../../assets/brand/placeholder-school-crest.svg'
  '../assets/brand/admin-workbench-banner.webp' = '../assets/brand/placeholder-hero-banner.svg'
  '../../assets/brand/admin-workbench-banner.webp' = '../../assets/brand/placeholder-hero-banner.svg'
  '../../assets/brand/admin-action-banner.webp' = '../../assets/brand/placeholder-action-banner.svg'
  '../assets/brand/four-mascots-reference.png' = '../assets/brand/placeholder-action-banner.svg'
}

$TextFiles = Get-ChildItem -LiteralPath $Out -Recurse -File |
  Where-Object { $_.Extension -in @('.html', '.css', '.md', '.json') }

foreach ($file in $TextFiles) {
  $text = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
  $updated = $text
  foreach ($key in $Replacements.Keys) {
    $updated = $updated.Replace($key, $Replacements[$key])
  }
  if ($updated -ne $text) {
    Set-Content -LiteralPath $file.FullName -Value $updated -Encoding UTF8
  }
}

$Report = @()
$Report += '# Public Template Export Report'
$Report += ''
$Report += ('Generated: ' + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss'))
$Report += ''
$Report += 'Removed official brand files from assets/brand:'
foreach ($name in $OfficialFiles) {
  $Report += ('- ' + $name)
}
$Report += ''
$Report += 'Placeholder assets retained:'
$Report += '- placeholder-school-crest.svg'
$Report += '- placeholder-hero-banner.svg'
$Report += '- placeholder-action-banner.svg'
$Report += ''
$Report += 'Review before publishing:'
$Report += '- Confirm no official image files are present.'
$Report += '- Confirm no credentials, tokens, logs, or private records are present.'
$Report += '- Confirm internal UNC path is intentionally retained only as an internal-network pointer.'

Set-Content -LiteralPath (Join-Path $Out 'PUBLIC_EXPORT_REPORT.md') -Value ($Report -join [Environment]::NewLine) -Encoding UTF8

Write-Host "Public template export prepared:"
Write-Host $Out
