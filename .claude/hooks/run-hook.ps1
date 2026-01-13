# Wrapper Cross-Platform per Hooks
# Uso: powershell -File run-hook.ps1 <nome-hook>

param(
    [Parameter(Mandatory=$true)]
    [string]$HookName
)

$HOOKS_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$PS1_SCRIPT = Join-Path $HOOKS_DIR "$HookName.ps1"

if (Test-Path $PS1_SCRIPT) {
    & $PS1_SCRIPT
} else {
    Write-Host "Hook non trovato: $HookName"
    exit 1
}
