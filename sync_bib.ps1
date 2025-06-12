# Vai nella cartella del tuo repo locale (dove è il file .bib)
Set-Location "C:\Users\matte\Documents\Zotero\biogas_methanation"

# Controlla se ci sono modifiche nel file .bib
$diff = git diff --quiet biogas_methanation.bib

if ($LASTEXITCODE -ne 0) {
    # Ci sono modifiche, quindi fai commit e push
    git add biogas_methanation.bib
    git commit -m "Aggiornamento automatico bib $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git push origin main
} else {
    # Nessuna modifica
    Write-Output "Nessuna modifica da committare"
}
