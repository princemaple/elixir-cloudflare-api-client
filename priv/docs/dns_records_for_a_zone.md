# DNS Records for a Zone

## Create DNS Record

**POST** `/zones/{zone_id}/dns_records`

Create a new DNS record for a zone.

Notes:
- A/AAAA records cannot exist on the same name as CNAME records.
- NS records cannot exist on the same name as any other record type.
- Domain names are always represented in Punycode, even if Unicode
  characters were used when creating the record.


### Responses

#### 200 Create DNS Record response

> Data is at `body["result"]`

```json
{
  "comment_modified_on": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "meta": {},
  "modified_on": "*string*",
  "proxiable": "*boolean*",
  "tags_modified_on": "*string*"
}
```

#### 4XX Create DNS Record response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List DNS Records

**GET** `/zones/{zone_id}/dns_records`

List, search, sort, and filter a zones' DNS records.

### Responses

#### 200 List DNS Records response

> Data is at `body["result"]`

```json
[
  {
    "comment_modified_on": "*string*",
    "created_on": "*string*",
    "id": "*string*",
    "meta": {},
    "modified_on": "*string*",
    "proxiable": "*boolean*",
    "tags_modified_on": "*string*"
  }
]
```

#### 4XX List DNS Records response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



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


### Responses

#### 200 Batch DNS Records response

> Data is at `body["result"]`

```json
{
  "deletes": [
    {
      "comment_modified_on": "*string*",
      "created_on": "*string*",
      "id": "*string*",
      "meta": {},
      "modified_on": "*string*",
      "proxiable": "*boolean*",
      "tags_modified_on": "*string*"
    }
  ],
  "patches": [
    {
      "comment_modified_on": "*string*",
      "created_on": "*string*",
      "id": "*string*",
      "meta": {},
      "modified_on": "*string*",
      "proxiable": "*boolean*",
      "tags_modified_on": "*string*"
    }
  ],
  "posts": [
    {
      "comment_modified_on": "*string*",
      "created_on": "*string*",
      "id": "*string*",
      "meta": {},
      "modified_on": "*string*",
      "proxiable": "*boolean*",
      "tags_modified_on": "*string*"
    }
  ],
  "puts": [
    {
      "comment_modified_on": "*string*",
      "created_on": "*string*",
      "id": "*string*",
      "meta": {},
      "modified_on": "*string*",
      "proxiable": "*boolean*",
      "tags_modified_on": "*string*"
    }
  ]
}
```

#### 4XX Batch DNS Records response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Export DNS Records

**GET** `/zones/{zone_id}/dns_records/export`

You can export your [BIND config](https://en.wikipedia.org/wiki/Zone_file "Zone file") through this endpoint.

See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/import-and-export/ "Import and export records") for more information.

### Responses

#### 200 Export DNS Records response

> Data is at `body["result"]`

```json

```

#### 4XX Export DNS Records response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Import DNS Records

**POST** `/zones/{zone_id}/dns_records/import`

You can upload your [BIND config](https://en.wikipedia.org/wiki/Zone_file "Zone file") through this endpoint. It assumes that cURL is called from a location with bind_config.txt (valid BIND config) present.

See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/import-and-export/ "Import and export records") for more information.

### Responses

#### 200 Import DNS Records response

> Data is at `body["result"]`

```json
{
  "recs_added": "*number*",
  "total_records_parsed": "*number*"
}
```

#### 4XX Import DNS Records response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Scan DNS Records

**POST** `/zones/{zone_id}/dns_records/scan`

Scan for common DNS records on your domain and automatically add them to your zone. Useful if you haven't updated your nameservers yet.

### Responses

#### 200 Scan DNS Records response

> Data is at `body["result"]`

```json
{
  "recs_added": "*number*",
  "total_records_parsed": "*number*"
}
```

#### 4XX Scan DNS Records response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Review Scanned DNS Records

**POST** `/zones/{zone_id}/dns_records/scan/review`

Accept or reject DNS records found by the DNS records scan. Accepted records will be permanently added to the zone, while rejected records will be permanently deleted.


### Responses

#### 200 Records reviewed successfully

> Data is at `body["result"]`

```json
{
  "accepts": [
    {
      "comment_modified_on": "*string*",
      "created_on": "*string*",
      "id": "*string*",
      "meta": {},
      "modified_on": "*string*",
      "proxiable": "*boolean*",
      "tags_modified_on": "*string*"
    }
  ],
  "rejects": [
    "*string*"
  ]
}
```

#### 4XX Review failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Scanned DNS Records

**GET** `/zones/{zone_id}/dns_records/scan/review`

Retrieves the list of DNS records discovered up to this point by the asynchronous scan. These records are temporary until explicitly accepted or rejected via `POST /scan/review`. Additional records may be discovered by the scan later.


### Responses

#### 200 List of discovered DNS records

> Data is at `body["result"]`

```json
[
  {
    "comment_modified_on": "*string*",
    "created_on": "*string*",
    "id": "*string*",
    "meta": {},
    "modified_on": "*string*",
    "proxiable": "*boolean*",
    "tags_modified_on": "*string*"
  }
]
```

#### 4XX Scan review failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Trigger DNS Record Scan

**POST** `/zones/{zone_id}/dns_records/scan/trigger`

Initiates an asynchronous scan for common DNS records on your domain. Note that this **does not** automatically add records to your zone. The scan runs in the background, and results can be reviewed later using the `/scan/review` endpoints. Useful if you haven't updated your nameservers yet.

### Responses

#### 200 Trigger DNS Records Scan Response

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "success": "*boolean*"
}
```

#### 4XX Trigger DNS Records Scan response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get DNS Record Usage

**GET** `/zones/{zone_id}/dns_records/usage`

Get the current DNS record usage for a zone, including the number of records and the quota limit.

### Responses

#### 200 Get DNS Record Usage response

> Data is at `body["result"]`

```json
{
  "record_quota": "*integer*",
  "record_usage": "*integer*"
}
```

#### 4XX Get DNS Record Usage response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Overwrite DNS Record

**PUT** `/zones/{zone_id}/dns_records/{dns_record_id}`

Overwrite an existing DNS record.

Notes:
- A/AAAA records cannot exist on the same name as CNAME records.
- NS records cannot exist on the same name as any other record type.
- Domain names are always represented in Punycode, even if Unicode
  characters were used when creating the record.


### Responses

#### 200 Update DNS Record response

> Data is at `body["result"]`

```json
{
  "comment_modified_on": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "meta": {},
  "modified_on": "*string*",
  "proxiable": "*boolean*",
  "tags_modified_on": "*string*"
}
```

#### 4XX Update DNS Record response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update DNS Record

**PATCH** `/zones/{zone_id}/dns_records/{dns_record_id}`

Update an existing DNS record.

Notes:
- A/AAAA records cannot exist on the same name as CNAME records.
- NS records cannot exist on the same name as any other record type.
- Domain names are always represented in Punycode, even if Unicode
  characters were used when creating the record.


### Responses

#### 200 Patch DNS Record response

> Data is at `body["result"]`

```json
{
  "comment_modified_on": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "meta": {},
  "modified_on": "*string*",
  "proxiable": "*boolean*",
  "tags_modified_on": "*string*"
}
```

#### 4XX Patch DNS Record response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## DNS Record Details

**GET** `/zones/{zone_id}/dns_records/{dns_record_id}`



### Responses

#### 200 DNS Record Details response

> Data is at `body["result"]`

```json
{
  "comment_modified_on": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "meta": {},
  "modified_on": "*string*",
  "proxiable": "*boolean*",
  "tags_modified_on": "*string*"
}
```

#### 4XX DNS Record Details response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete DNS Record

**DELETE** `/zones/{zone_id}/dns_records/{dns_record_id}`



### Responses

#### 200 Delete DNS Record response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete DNS Record response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


