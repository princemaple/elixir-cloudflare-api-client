# URL Scanner (Deprecated)

## Get raw response

**GET** `/accounts/{account_id}/urlscanner/response/{response_id}`

Returns the plain response of the network request.


## Create URL Scan

**POST** `/accounts/{account_id}/urlscanner/scan`

Submit a URL to scan. You can also set some options, like the visibility level and custom headers. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/.


## Search URL scans

**GET** `/accounts/{account_id}/urlscanner/scan`

Search scans by date and webpages' requests, including full URL (after redirects), hostname, and path. <br/> A successful scan will appear in search results a few minutes after finishing but may take much longer if the system in under load. By default, only successfully completed scans will appear in search results, unless searching by `scanId`. Please take into account that older scans may be removed from the search index at an unspecified time.


## Get URL scan

**GET** `/accounts/{account_id}/urlscanner/scan/{scan_id}`

Get URL scan by uuid


## Get URL scan's HAR

**GET** `/accounts/{account_id}/urlscanner/scan/{scan_id}/har`

Get a URL scan's HAR file. See HAR spec at http://www.softwareishard.com/blog/har-12-spec/.


## Get screenshot

**GET** `/accounts/{account_id}/urlscanner/scan/{scan_id}/screenshot`

Get scan's screenshot by resolution (desktop/mobile/tablet).

