# Per-Hostname TLS Settings

## List TLS setting for hostnames

**GET** `/zones/{zone_id}/hostnames/settings/{setting_id}`

List the requested TLS setting for the hostnames under this zone.

### Responses

#### 200 List per-hostname TLS settings response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List per-hostname TLS settings response failure

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
    "count": null,
    "page": null,
    "per_page": null,
    "total_count": null,
    "total_pages": "*number*"
  },
  "success": "*boolean*"
}
```



## Edit TLS setting for hostname

**PUT** `/zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`

Update the tls setting value for the hostname.

### Responses

#### 200 Edit TLS setting for hostname response

> Data is at `body["result"]`

```json
null
```

#### 4XX Edit TLS setting for hostname response failure

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



## Get TLS setting for hostname

**GET** `/zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`

Get the requested TLS setting for the hostname.

### Responses

#### 200 Get TLS setting for hostname response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get TLS setting for hostname response failure

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



## Delete TLS setting for hostname

**DELETE** `/zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`

Delete the tls setting value for the hostname.

### Responses

#### 200 Delete TLS setting for hostname response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete TLS setting for hostname response failure

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


