# Zone

## Create Zone

**POST** `/zones`



### Responses

#### 200 Create Zone response.

> Data is at `body["result"]`

```json
{
  "account": {
    "id": "*string*",
    "name": "*string*"
  },
  "activated_on": "*string*",
  "cname_suffix": "*string*",
  "created_on": "*string*",
  "development_mode": "*number*",
  "id": "*string*",
  "meta": {
    "cdn_only": "*boolean*",
    "custom_certificate_quota": "*integer*",
    "dns_only": "*boolean*",
    "foundation_dns": "*boolean*",
    "page_rule_quota": "*integer*",
    "phishing_detected": "*boolean*",
    "step": "*integer*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "name_servers": [
    "*string*"
  ],
  "original_dnshost": "*string*",
  "original_name_servers": [
    "*string*"
  ],
  "original_registrar": "*string*",
  "owner": {
    "id": "*string*",
    "name": "*string*",
    "type": "*string*"
  },
  "paused": "*boolean*",
  "permissions": [
    "*string*"
  ],
  "plan": null,
  "status": "*string*",
  "tenant": null,
  "tenant_unit": null,
  "type": "*string*",
  "vanity_name_servers": [
    "*string*"
  ],
  "verification_key": "*string*"
}
```

#### 4XX Create Zone response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Zones

**GET** `/zones`

Lists, searches, sorts, and filters your zones. Listing zones across more than 500 accounts
is currently not allowed.


### Responses

#### 200 List Zones response.

> Data is at `body["result"]`

```json
[
  {
    "account": {
      "id": "*string*",
      "name": "*string*"
    },
    "activated_on": "*string*",
    "cname_suffix": "*string*",
    "created_on": "*string*",
    "development_mode": "*number*",
    "id": "*string*",
    "meta": {
      "cdn_only": "*boolean*",
      "custom_certificate_quota": "*integer*",
      "dns_only": "*boolean*",
      "foundation_dns": "*boolean*",
      "page_rule_quota": "*integer*",
      "phishing_detected": "*boolean*",
      "step": "*integer*"
    },
    "modified_on": "*string*",
    "name": "*string*",
    "name_servers": [
      "*string*"
    ],
    "original_dnshost": "*string*",
    "original_name_servers": [
      "*string*"
    ],
    "original_registrar": "*string*",
    "owner": {
      "id": "*string*",
      "name": "*string*",
      "type": "*string*"
    },
    "paused": "*boolean*",
    "permissions": [
      "*string*"
    ],
    "plan": null,
    "status": "*string*",
    "tenant": null,
    "tenant_unit": null,
    "type": "*string*",
    "vanity_name_servers": [
      "*string*"
    ],
    "verification_key": "*string*"
  }
]
```

#### 4XX List Zones response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Edit Zone

**PATCH** `/zones/{zone_id}`

Edits a zone. Only one zone property can be changed at a time.

### Responses

#### 200 Edit Zone response.

> Data is at `body["result"]`

```json
{
  "account": {
    "id": "*string*",
    "name": "*string*"
  },
  "activated_on": "*string*",
  "cname_suffix": "*string*",
  "created_on": "*string*",
  "development_mode": "*number*",
  "id": "*string*",
  "meta": {
    "cdn_only": "*boolean*",
    "custom_certificate_quota": "*integer*",
    "dns_only": "*boolean*",
    "foundation_dns": "*boolean*",
    "page_rule_quota": "*integer*",
    "phishing_detected": "*boolean*",
    "step": "*integer*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "name_servers": [
    "*string*"
  ],
  "original_dnshost": "*string*",
  "original_name_servers": [
    "*string*"
  ],
  "original_registrar": "*string*",
  "owner": {
    "id": "*string*",
    "name": "*string*",
    "type": "*string*"
  },
  "paused": "*boolean*",
  "permissions": [
    "*string*"
  ],
  "plan": null,
  "status": "*string*",
  "tenant": null,
  "tenant_unit": null,
  "type": "*string*",
  "vanity_name_servers": [
    "*string*"
  ],
  "verification_key": "*string*"
}
```

#### 4XX Edit Zone response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Zone Details

**GET** `/zones/{zone_id}`



### Responses

#### 200 Zone Details response.

> Data is at `body["result"]`

```json
{
  "account": {
    "id": "*string*",
    "name": "*string*"
  },
  "activated_on": "*string*",
  "cname_suffix": "*string*",
  "created_on": "*string*",
  "development_mode": "*number*",
  "id": "*string*",
  "meta": {
    "cdn_only": "*boolean*",
    "custom_certificate_quota": "*integer*",
    "dns_only": "*boolean*",
    "foundation_dns": "*boolean*",
    "page_rule_quota": "*integer*",
    "phishing_detected": "*boolean*",
    "step": "*integer*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "name_servers": [
    "*string*"
  ],
  "original_dnshost": "*string*",
  "original_name_servers": [
    "*string*"
  ],
  "original_registrar": "*string*",
  "owner": {
    "id": "*string*",
    "name": "*string*",
    "type": "*string*"
  },
  "paused": "*boolean*",
  "permissions": [
    "*string*"
  ],
  "plan": null,
  "status": "*string*",
  "tenant": null,
  "tenant_unit": null,
  "type": "*string*",
  "vanity_name_servers": [
    "*string*"
  ],
  "verification_key": "*string*"
}
```

#### 4XX Zone Details response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete Zone

**DELETE** `/zones/{zone_id}`

Deletes an existing zone.

### Responses

#### 200 Delete Zone response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Zone response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Rerun the Activation Check

**PUT** `/zones/{zone_id}/activation_check`

Triggeres a new activation check for a PENDING Zone. This can be
triggered every 5 min for paygo/ent customers, every hour for FREE
Zones.

### Responses

#### 200 Successful Response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Client Error

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



## Purge Cached Content

**POST** `/zones/{zone_id}/purge_cache`

### Purge All Cached Content
Removes ALL files from Cloudflare's cache. All tiers can purge everything.
```
{"purge_everything": true}
```

### Purge Cached Content by URL
Granularly removes one or more files from Cloudflare's cache by specifying URLs. All tiers can purge by URL.

To purge files with custom cache keys, include the headers used to compute the cache key as in the example. If you have a device type or geo in your cache key, you will need to include the CF-Device-Type or CF-IPCountry headers. If you have lang in your cache key, you will need to include the Accept-Language header.

**NB:** When including the Origin header, be sure to include the **scheme** and **hostname**. The port number can be omitted if it is the default port (80 for http, 443 for https), but must be included otherwise.

Single file purge example with files:
```
{"files": ["http://www.example.com/css/styles.css", "http://www.example.com/js/index.js"]}
```
Single file purge example with url and header pairs:
```
{"files": [{url: "http://www.example.com/cat_picture.jpg", headers: { "CF-IPCountry": "US", "CF-Device-Type": "desktop", "Accept-Language": "zh-CN" }}, {url: "http://www.example.com/dog_picture.jpg", headers: { "CF-IPCountry": "EU", "CF-Device-Type": "mobile", "Accept-Language": "en-US" }}]}
```

### Purge Cached Content by Tag, Host or Prefix
Granularly removes one or more files from Cloudflare's cache either by specifying the host, the associated Cache-Tag, or a Prefix.

Flex purge with tags:
```
{"tags": ["a-cache-tag", "another-cache-tag"]}
```
Flex purge with hosts:
```
{"hosts": ["www.example.com", "images.example.com"]}
```
Flex purge with prefixes:
```
{"prefixes": ["www.example.com/foo", "images.example.com/bar/baz"]}
```

### Availability and limits
please refer to [purge cache availability and limits documentation page](https://developers.cloudflare.com/cache/how-to/purge-cache/#availability-and-limits).


### Responses

#### 200 Request to purge cached content successfull.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Request to purge cached content failed.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


