# 1. Connect to Microsoft Purview (Security & Compliance)
Connect-IPPSSession

# 2. Enable Unified Audit Logging (The 'Black Box' of M365)
Write-Host "Enabling Unified Audit Logging..." -ForegroundColor Cyan
Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true

# 3. Create a Retention Policy for Financial Records
Write-Host "Creating 7-Year Retention Policy..." -ForegroundColor Cyan
New-RetentionCompliancePolicy -Name "RET-FINANCE-7YR" -SharePointLocation "All" -ExchangeLocation "All"
New-RetentionComplianceRule -Name "Rule-Retain7Years" -Policy "RET-FINANCE-7YR" -RetentionDuration 2555 -ExpirationAction HoldAndAllowRemoval

# 4. Verify Sensitivity Labels Status
Get-Label | Select-Object DisplayName, ContentType, Mode
