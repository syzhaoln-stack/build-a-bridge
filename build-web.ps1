$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
  throw 'Pandoc 2.19 or newer is required.'
}

New-Item -ItemType Directory -Force -Path 'docs/chapters' | Out-Null

$chapters = @(
  @('01','chapters/part1-beam/chap01.tex'),
  @('02','chapters/part1-beam/chap02.tex'),
  @('03','chapters/part1-beam/chap03.tex'),
  @('04','chapters/part2-arch/chap04.tex'),
  @('05','chapters/part2-arch/chap05.tex'),
  @('06','chapters/part2-arch/chap06.tex'),
  @('07','chapters/part3-cablestayed/chap07.tex'),
  @('08','chapters/part3-cablestayed/chap08.tex'),
  @('09','chapters/part3-cablestayed/chap09.tex'),
  @('10','chapters/part4-suspension/chap10.tex'),
  @('11','chapters/part4-suspension/chap11.tex'),
  @('12','chapters/part4-suspension/chap12.tex'),
  @('13','chapters/part5-composite/chap13.tex'),
  @('14','chapters/part5-composite/chap14.tex'),
  @('15','chapters/part5-composite/chap15.tex')
)

foreach ($chapter in $chapters) {
  $number, $source = $chapter
  & pandoc $source -f latex -t html5 --template='web/page.html' --metadata="pagetitle=Chapter $number" --wrap=none -o "docs/chapters/$number.html"
  if ($LASTEXITCODE -ne 0) { throw "Web build failed: $source" }
}

Write-Host "Generated $($chapters.Count) chapter pages."
