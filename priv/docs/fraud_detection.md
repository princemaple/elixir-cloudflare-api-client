# Fraud Detection

## Update Fraud Detection Settings

**PUT** `/zones/{zone_id}/fraud_detection/settings`

Update Fraud Detection settings for a zone.

Notes on `username_expressions` behavior:
- If omitted or set to null, expressions are not modified.
- If provided as an empty array `[]`, all expressions will be cleared.



## Get Fraud Detection Settings

**GET** `/zones/{zone_id}/fraud_detection/settings`

Retrieve Fraud Detection settings for a zone.

