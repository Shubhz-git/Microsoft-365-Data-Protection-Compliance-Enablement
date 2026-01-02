# M365 Data Protection & Compliance Enablement

## Project Overview
This project demonstrates the implementation of a comprehensive data governance framework within Microsoft 365. The goal was to secure sensitive organizational data through automated classification, prevent data exfiltration via Power Platform, and ensure legal compliance for data retention.

## Technical Architecture


### 1. Information Protection (Sensitivity Labels)
- **Label Name:** `LBL-CONFIDENTIAL-FINANCE`
- **Logic:** Applied encryption to all documents tagged as "Confidential".
- **Access Control:** Restricted "Viewer" permissions to the Finance AD Group only.

### 2. Data Loss Prevention (DLP)
- **M365 DLP:** Scans for Credit Card numbers and SSNs in Outlook/Teams.
- **Power Platform DLP:** Segmented connectors into 'Business' and 'Non-Business' tiers to prevent data flow from SQL Server to Twitter/Personal Gmail.

### 3. Data Lifecycle Management
- **Policy:** `RET-FINANCE-7YR`
- **Requirement:** Compliance with financial regulations requiring 7 years of data availability.
- **Action:** Automatic deletion after 2555 days to reduce data liability.

## How to Deploy
1. Run the `Scripts/Deploy-Compliance.ps1` to initialize auditing and retention.
2. Follow `Documentation/Sensitivity-Labels.md` for manual UI configuration steps.
