$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$assets = Join-Path $root 'assets'
$deck = Join-Path $assets 'Fabric-External-Orchestration-Architecture.pptx'
$pdf = Join-Path $assets 'Fabric-External-Orchestration-Architecture.pdf'
$previews = Join-Path $assets 'architecture-previews'
New-Item -ItemType Directory -Path $previews -Force | Out-Null

$powerpoint = New-Object -ComObject PowerPoint.Application
$presentation = $null
$overflow = [System.Collections.Generic.List[object]]::new()
try {
    $presentation = $powerpoint.Presentations.Open($deck, $true, $false, $false)
    if ($presentation.Slides.Count -ne 2) {
        throw 'The architecture deck must contain exactly two slides.'
    }
    $presentation.SaveAs($pdf, 32)
    for ($i = 1; $i -le $presentation.Slides.Count; $i++) {
        $slide = $presentation.Slides.Item($i)
        foreach ($shape in $slide.Shapes) {
            if ($shape.HasTextFrame -eq -1 -and $shape.TextFrame2.HasText -eq -1) {
                $available = $shape.Height - $shape.TextFrame2.MarginTop - $shape.TextFrame2.MarginBottom
                if ($shape.TextFrame2.TextRange.BoundHeight -gt ($available + 1.5)) {
                    $overflow.Add(@{ slide = $i; shape = $shape.Name; text = $shape.TextFrame2.TextRange.Text })
                }
            }
        }
        $slide.Export((Join-Path $previews ('slide-{0:D2}.png' -f $i)), 'PNG', 1600, 900)
    }
    @{ slide_count = $presentation.Slides.Count; overflow = @($overflow.ToArray()) } |
        ConvertTo-Json -Depth 5 | Set-Content -Path (Join-Path $previews 'render-checks.json') -Encoding utf8
    if ($overflow.Count -gt 0) {
        throw ('Text overflow detected in {0} shapes; inspect render-checks.json.' -f $overflow.Count)
    }
    Write-Output 'Rendered two architecture slides to PDF and PNG with no text overflow.'
}
finally {
    if ($null -ne $presentation) {
        $presentation.Close()
        [Runtime.InteropServices.Marshal]::FinalReleaseComObject($presentation) | Out-Null
    }
    [Runtime.InteropServices.Marshal]::FinalReleaseComObject($powerpoint) | Out-Null
}
