# DNS Records for a Zone

## Create DNS Record

**POST** `/zones/{zone_id}/dns_records`

Create a new DNS record for a zone.

Notes:
- A/AAAA records cannot exist on the same name as CNAME records.
- NS records cannot exist on the same name as any other record type.
- Domain names are always represented in Punycode, even if Unicode
  characters were used when creating the record.



## List DNS Records

**GET** `/zones/{zone_id}/dns_records`

List, search, sort, and filter a zones' DNS records.


## Batch DNS Records

**POST** `/zones/{zone_id}/dns_records/batch`

Send a Batch of DNS Record API calls to be executed together.

Notes:
- Although Cloudflare will execute the batched operations in a single database transaction, Cloudflare's distributed KV store must treat each record change as a single key-value pair. This means that the propagation of changes is not atomic. See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/batch-record-changes/ "Batch DNS records") for more information.
- The operations you specify within the /batch request body are always executed in the following order:

    - Deletes
    - Patches
    - Puts
    - Posts



## Export DNS Records

**GET** `/zones/{zone_id}/dns_records/export`

You can export your [BIND config](https://en.wikipedia.org/wiki/Zone_file "Zone file") through this endpoint.

See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/import-and-export/ "Import and export records") for more information.


## Import DNS Records

**POST** `/zones/{zone_id}/dns_records/import`

You can upload your [BIND config](https://en.wikipedia.org/wiki/Zone_file "Zone file") through this endpoint. It assumes that cURL is called from a location with bind_config.txt (valid BIND config) present.

See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/import-and-export/ "Import and export records") for more information.


## Scan DNS Records

**POST** `/zones/{zone_id}/dns_records/scan`

Scan for common DNS records on your domain and automatically add them to your zone. Useful if you haven't updated your nameservers yet.


## Review Scanned DNS Records

**POST** `/zones/{zone_id}/dns_records/scan/review`

Accept or reject DNS records found by the DNS records scan. Accepted records will be permanently added to the zone, while rejected records will be permanently deleted.



## List Scanned DNS Records

**GET** `/zones/{zone_id}/dns_records/scan/review`

Retrieves the list of DNS records discovered up to this point by the asynchronous scan. These records are temporary until explicitly accepted or rejected via `POST /scan/review`. Additional records may be discovered by the scan later.



## Trigger DNS Record Scan

**POST** `/zones/{zone_id}/dns_records/scan/trigger`

Initiates an asynchronous scan for common DNS records on your domain. Note that this **does not** automatically add records to your zone. The scan runs in the background, and results can be reviewed later using the `/scan/review` endpoints. Useful if you haven't updated your nameservers yet.


## Get DNS Record Usage

**GET** `/zones/{zone_id}/dns_records/usage`

Get the current DNS record usage for a zone, including the number of records and the quota limit.


## Overwrite DNS Record

**PUT** `/zones/{zone_id}/dns_records/{dns_record_id}`

Overwrite an existing DNS record.

Notes:
- A/AAAA records cannot exist on the same name as CNAME records.
- NS records cannot exist on the same name as any other record type.
- Domain names are always represented in Punycode, even if Unicode
  characters were used when creating the record.



## Update DNS Record

**PATCH** `/zones/{zone_id}/dns_records/{dns_record_id}`

Update an existing DNS record.

Notes:
- A/AAAA records cannot exist on the same name as CNAME records.
- NS records cannot exist on the same name as any other record type.
- Domain names are always represented in Punycode, even if Unicode
  characters were used when creating the record.



## DNS Record Details

**GET** `/zones/{zone_id}/dns_records/{dns_record_id}`




## Delete DNS Record

**DELETE** `/zones/{zone_id}/dns_records/{dns_record_id}`



