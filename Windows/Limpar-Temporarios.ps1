Write-Host "Iniciando a limpeza..."

$temp = $env:TEMP
if (Test-Path $temp) {
    Write-Host "Limpando %TEMP%..."
    Remove-Item "$temp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "%TEMP% limpo."
}

$tmp = $env:TMP
if ($tmp -ne $temp -and (Test-Path $tmp)) {
    Write-Host "Limpando %TMP%..."
    Remove-Item "$tmp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "%TMP% limpo."
}

if (Test-Path "C:\Windows\Temp") {
    Write-Host "Limpando C:\Windows\Temp..."
    Remove-Item "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "C:\Windows\Temp limpo."
}

if (Test-Path "C:\Windows\Prefetch") {
    Write-Host "Limpando C:\Windows\Prefetch..."
    Remove-Item "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "Prefetch limpo."
}

$edgeCache = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache"
if (Test-Path $edgeCache) {
    Write-Host "Limpando cache do Edge..."
    Remove-Item "$edgeCache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "Cache do Edge limpo."
}

$chromeCache = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache"
if (Test-Path $chromeCache) {
    Write-Host "Limpando cache do Google Chrome..."
    Remove-Item "$chromeCache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "Cache do Google Chrome limpo."
}

try {
    Write-Host "Esvaziando a lixeira..."
    (New-Object -ComObject Shell.Application).NameSpace(0xA).Items() | ForEach-Object {
        Remove-Item $_.Path -Recurse -Force -ErrorAction SilentlyContinue
    }
    Write-Host "Lixeira esvaziada."
} catch {
    Write-Host "Erro ao esvaziar a lixeira: $_"
}

Write-Host "Limpeza concluída."
Pause
