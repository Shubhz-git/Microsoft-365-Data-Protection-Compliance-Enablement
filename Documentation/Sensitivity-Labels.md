Sensitivity Label Implementation
Portal: Open Microsoft Purview.

Create Label: * Name: Confidential - Internal

Tooltip: "High-value business data; for internal use only."

Encryption: * Select Assign permissions now.

Add your organization's domain to ensure only internal staff can decrypt.

Auto-Labeling: * Enable "Auto-labeling for files and emails."

Set a condition: "Content contains: Credit Card Number."

Result: M365 will automatically encrypt any document where it detects a credit card number.
