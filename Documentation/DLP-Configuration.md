Step-by-Step Power Platform DLP Setup
Access: Log into the Power Platform Admin Center.

Navigate: Go to Policies > Data Policies.

Create: Click + New Policy.

Name: DLP-GLOBAL-PROTECT

Assign Connectors:

Find SQL Server, Office 365 Users, and SharePoint. Click Move to Business.

Find Twitter, Facebook, and Google Sheets. Keep them in Non-Business.

Scope: Select Add all environments.

Review: Click Create Policy.

Result: Users can no longer create a Power Automate flow that triggers when a SharePoint file is modified and posts the content to Twitter.
