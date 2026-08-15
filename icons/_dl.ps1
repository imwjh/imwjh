$base = 'https://raw.githubusercontent.com/lucide-icons/lucide/main/icons/'
$map = @{
    blog = 'book-open'
    portfolio = 'images'
    support = 'heart'
    email = 'mail'
    x = 'twitter'
    instagram = 'instagram'
    github = 'github'
}
$dir = 'e:\WJH\个人网站\github主页\imwjh\imwjh\icons'
foreach ($k in $map.Keys) {
    $url = $base + $map[$k] + '.svg'
    $out = Join-Path $dir ($k + '.svg')
    try {
        Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing
        Write-Host "OK $k"
    } catch {
        Write-Host "FAIL $k $_"
    }
}
