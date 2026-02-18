# URL Scanner

## Bulk create URL Scans

**POST** `/accounts/{account_id}/urlscanner/v2/bulk`

Submit URLs to scan. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/ and take into account scans submitted in bulk have lower priority and may take longer to finish.


## Get URL scan's DOM

**GET** `/accounts/{account_id}/urlscanner/v2/dom/{scan_id}`

Returns a plain text response, with the scan's DOM content as rendered by Chrome.


## Get URL scan's HAR

**GET** `/accounts/{account_id}/urlscanner/v2/har/{scan_id}`

Get a URL scan's HAR file. See HAR spec at http://www.softwareishard.com/blog/har-12-spec/.


## Get raw response

**GET** `/accounts/{account_id}/urlscanner/v2/responses/{response_id}`

Returns the raw response of the network request. Find the `response_id` in the `data.requests.response.hash`.


## Get URL scan

**GET** `/accounts/{account_id}/urlscanner/v2/result/{scan_id}`

Get URL scan by uuid


## Create URL Scan

**POST** `/accounts/{account_id}/urlscanner/v2/scan`

Submit a URL to scan. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/.


## Get screenshot

**GET** `/accounts/{account_id}/urlscanner/v2/screenshots/{scan_id}.png`

Get scan's screenshot by resolution (desktop/mobile/tablet).


## Search URL scans

**GET** `/accounts/{account_id}/urlscanner/v2/search`

Use a subset of ElasticSearch Query syntax to filter scans. Some example queries:<br/> <br/>- 'path:"/bundles/jquery.js"': Searches for scans who requested resources with the given path.<br/>- 'page.asn:AS24940 AND hash:xxx': Websites hosted in AS24940 where a resource with the given hash was downloaded.<br/>- 'page.domain:microsoft* AND verdicts.malicious:true AND NOT page.domain:microsoft.com': malicious scans whose hostname starts with "microsoft".<br/>- 'apikey:me AND date:[2025-01 TO 2025-02]': my scans from 2025 January to 2025 February.

