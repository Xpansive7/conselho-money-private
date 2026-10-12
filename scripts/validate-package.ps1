$ErrorActionPreference = 'Stop'

$repo = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$plugin = Join-Path $repo 'plugins\conselho-money'
$overlayPath = Join-Path $plugin '.codex-plugin\plugin.json'
$portablePath = Join-Path $plugin 'plugin.json'
$marketplacePath = Join-Path $repo '.agents\plugins\marketplace.json'

$overlay = Get-Content -Raw -LiteralPath $overlayPath | ConvertFrom-Json
$portable = Get-Content -Raw -LiteralPath $portablePath | ConvertFrom-Json
$marketplace = Get-Content -Raw -LiteralPath $marketplacePath | ConvertFrom-Json

if ($overlay.name -ne 'conselho-money' -or $portable.name -ne $overlay.name) { throw 'Nome inválido ou divergente nos manifestos.' }
if ($overlay.version -notmatch '^\d+\.\d+\.\d+([+-][0-9A-Za-z.-]+)?$' -or $portable.version -ne $overlay.version) { throw 'Versão inválida ou divergente.' }
if ($portable.'$schema' -ne 'https://agent-plugins.org/schemas/1.0.0/plugin.schema.json') { throw 'Schema portátil ausente ou inválido.' }
if (-not $portable.extensions.'com.openai') { throw 'Extensão portátil com.openai ausente.' }
$portableInterface = $portable.extensions.'com.openai'.interface
if (-not $portableInterface) { throw 'Interface portátil ausente.' }
if ($portableInterface.shortDescription.Length -gt 30) { throw 'shortDescription portátil excede 30 caracteres.' }
$onboarding = $portable.extensions.'com.openai'.onboardingSkill
if (-not $onboarding) { throw 'onboardingSkill ausente.' }
$onboardingRelative = $onboarding -replace '^\./',''
if (-not (Test-Path -LiteralPath (Join-Path $plugin $onboardingRelative))) { throw 'onboardingSkill aponta para arquivo ausente.' }
if ($marketplace.plugins.name -notcontains $overlay.name) { throw 'Plugin ausente do marketplace.' }
$skillsRelative = $overlay.skills -replace '^\./',''
if (-not (Test-Path -LiteralPath (Join-Path $plugin $skillsRelative))) { throw 'Diretório de skills ausente.' }
if ($overlay.mcpServers -or $portable.mcpServers) { throw 'MCP remoto não deve ser ativado no release sem autenticação e isolamento validados.' }

$skillDirs = Get-ChildItem -LiteralPath (Join-Path $plugin 'skills') -Directory | Where-Object { Test-Path (Join-Path $_.FullName 'SKILL.md') }
foreach ($dir in $skillDirs) {
  $content = Get-Content -Raw -LiteralPath (Join-Path $dir.FullName 'SKILL.md')
  if ($content -notmatch '(?ms)^---\s*\r?\n.*?^name:\s*([^\r\n]+).*?^description:\s*([^\r\n]+).*?^---') { throw "Frontmatter inválido: $($dir.Name)" }
  if ($Matches[1].Trim() -ne $dir.Name) { throw "Nome e pasta divergem: $($dir.Name)" }
  if ([string]::IsNullOrWhiteSpace($Matches[2])) { throw "Descrição vazia: $($dir.Name)" }
}

$forbiddenBrainTerms = 'MONEY|BLACK OS|BLACKOS|decisão final do coordenador'
$brainViolations = Get-ChildItem -LiteralPath (Join-Path $plugin 'skills') -Filter 'brain.md' -Recurse | Where-Object { $_.FullName -match 'skills\\conselho-money-' } | Select-String -Pattern $forbiddenBrainTerms -CaseSensitive
if ($brainViolations) { throw 'Cérebro profissional contém acoplamento nominal à coordenação ou memória.' }

$advisors = @('eugene-schwartz','clayton-makepeace','gary-halbert','john-carlton','gary-bencivenga','stefan-georgi','robert-greene','quentin-tarantino')
foreach ($advisor in $advisors) {
  $dir = Join-Path $plugin ('skills\conselho-money-' + $advisor)
  foreach ($rel in @('SKILL.md','references\operating-card.md','references\sources-index.md','references\brain.md')) {
    if (-not (Test-Path -LiteralPath (Join-Path $dir $rel))) { throw "Arquivo ausente: $advisor/$rel" }
  }
}

$placeholderToken = '[TO' + 'DO:'
$placeholders = Get-ChildItem -LiteralPath $repo -File -Recurse | Where-Object { $_.Extension -in '.md','.json','.ps1' } | Select-String -SimpleMatch $placeholderToken
if ($placeholders) { throw 'Há placeholders TODO no pacote.' }

Write-Output "PASS: $($skillDirs.Count) skills, manifesto portátil e overlay válidos, oito conselheiros completos."
