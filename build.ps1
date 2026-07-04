$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$build = Join-Path $root 'build'
New-Item -ItemType Directory -Force $build | Out-Null

Push-Location $root
try {
    xelatex -interaction=nonstopmode -file-line-error -output-directory=build main.tex
    biber --input-directory=build --output-directory=build main
    xelatex -interaction=nonstopmode -file-line-error -output-directory=build main.tex
    xelatex -interaction=nonstopmode -file-line-error -output-directory=build main.tex
    Write-Host "Built: $build\main.pdf"
}
finally {
    Pop-Location
}
