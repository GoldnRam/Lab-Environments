# prepare_endpoint.ps1
Write-Host "Configuring Endpoint for Research..."
# Disable Defender so it doesn't interfere with agent telemetry
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableIOAVProtection $true
# Add other workstation hardening/softening here
