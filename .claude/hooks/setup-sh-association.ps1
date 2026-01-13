# Setup Shell Association per Windows
# Configura l'associazione file .sh con Git Bash

param()

try {
    # Trova Git Bash
    $gitBash = "C:\Program Files\Git\bin\bash.exe"
    if (-not (Test-Path $gitBash)) {
        $gitBash = "C:\Program Files (x86)\Git\bin\bash.exe"
    }

    if (Test-Path $gitBash) {
        # Crea associazione per file .sh
        $null = New-Item -Path "HKCU:\Software\Classes\.sh" -Force
        Set-ItemProperty -Path "HKCU:\Software\Classes\.sh" -Name "(Default)" -Value "sh_auto_file"

        $null = New-Item -Path "HKCU:\Software\Classes\sh_auto_file\shell\open\command" -Force
        Set-ItemProperty -Path "HKCU:\Software\Classes\sh_auto_file\shell\open\command" -Name "(Default)" -Value "`"$gitBash`" `"%1`""

        Write-Host "Associazione .sh configurata con Git Bash"
    } else {
        Write-Host "Git Bash non trovato - associazione non configurata"
    }
} catch {
    Write-Host "Errore configurazione associazione .sh: $_"
}
