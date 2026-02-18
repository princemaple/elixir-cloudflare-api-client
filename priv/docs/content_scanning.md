# Content Scanning

## Disable Content Scanning

**POST** `/zones/{zone_id}/content-upload-scan/disable`

Disable Content Scanning.


## Enable Content Scanning

**POST** `/zones/{zone_id}/content-upload-scan/enable`

Enable Content Scanning.


## Add Custom Scan Expressions

**POST** `/zones/{zone_id}/content-upload-scan/payloads`

Add custom scan expressions for Content Scanning.


## List Existing Custom Scan Expressions

**GET** `/zones/{zone_id}/content-upload-scan/payloads`

Get a list of existing custom scan expressions for Content Scanning.


## Delete a Custom Scan Expression

**DELETE** `/zones/{zone_id}/content-upload-scan/payloads/{expression_id}`

Delete a Content Scan Custom Expression.


## Update Content Scanning Status

**PUT** `/zones/{zone_id}/content-upload-scan/settings`

Update the Content Scanning status.


## Get Content Scanning Status

**GET** `/zones/{zone_id}/content-upload-scan/settings`

Retrieve the current status of Content Scanning.

