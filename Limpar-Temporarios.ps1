Write-Host "Iniciando a limpeza..."

try {
    Write-Host "Limpando %TEMP%..."
    Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "%TEMP% limpo com sucesso."
} catch {
    Write-Host "Erro ao limpar %TEMP%: $_"
}

try {
    Write-Host "Limpando C:\Windows\Temp..."
    Remove-Item "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "C:\Windows\Temp limpo com sucesso."
} catch {
    Write-Host "Erro ao limpar C:\Windows\Temp: $_"
}

try {
    Write-Host "Limpando C:\Windows\Prefetch..."
    Remove-Item "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "Prefetch limpo com sucesso."
} catch {
    Write-Host "Erro ao limpar Prefetch: $_"
}

try {
    Write-Host "Esvaziando a lixeira..."
    Clear-RecycleBin -Force -ErrorAction SilentlyContinue
    Write-Host "Lixeira esvaziada com sucesso."
} catch {
    Write-Host "Erro ao esvaziar a lixeira: $_"
}

Write-Host "Limpeza concluída."
Pause
