# Pegar o diretório atual
$scriptDirectory = Split-Path $MyInvocation.MyCommand.Definition

# Arquivo de saída com todos os SQL
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# Verifica se o arquivo já existe e remove
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Pega os arquivos SQL
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File |
            Where-Object { $_.Name -ne "migration.sql" } |
            Sort-Object Name

# Concatena os arquivos
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos os arquivos foram combinados em $outputFile"