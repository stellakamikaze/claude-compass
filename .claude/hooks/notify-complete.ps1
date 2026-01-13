# Notifica Completamento Sessione Claude Code
# Mostra una notifica Windows quando la sessione termina

param()

try {
    # Usa BurntToast se disponibile, altrimenti notifica base Windows
    if (Get-Module -ListAvailable -Name BurntToast) {
        Import-Module BurntToast
        New-BurntToastNotification -Text "Claude Code", "Sessione terminata"
    } else {
        # Notifica base con Windows Forms
        Add-Type -AssemblyName System.Windows.Forms
        $notify = New-Object System.Windows.Forms.NotifyIcon
        $notify.Icon = [System.Drawing.SystemIcons]::Information
        $notify.BalloonTipIcon = "Info"
        $notify.BalloonTipTitle = "Claude Code"
        $notify.BalloonTipText = "Sessione terminata"
        $notify.Visible = $true
        $notify.ShowBalloonTip(3000)
        Start-Sleep -Milliseconds 3500
        $notify.Dispose()
    }
} catch {
    # Fallback silenzioso se la notifica fallisce
    Write-Host "Sessione Claude Code terminata"
}
