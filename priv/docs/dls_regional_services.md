# DLS Regional Services

## List Regions

**GET** `/accounts/{account_id}/addressing/regional_hostnames/regions`

List all Regional Services regions available for use by this account.

### Responses

#### 200 List regions response

> Data is at `body["result"]`

```json
[
  {
    "key": "*string*",
    "label": "*string*"
  }
]
```

#### 4XX Failure to list regions

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



## Create Regional Hostname

**POST** `/zones/{zone_id}/addressing/regional_hostnames`

Create a new Regional Hostname entry. Cloudflare will only use data centers that are physically located within the chosen region to decrypt and service HTTPS traffic. Learn more about [Regional Services](https://developers.cloudflare.com/data-localization/regional-services/get-started/).

### Responses

#### 200 Create hostname response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "hostname": "*string*",
  "region_key": "*string*",
  "routing": "*string*"
}
```

#### 4XX Failure to create hostname

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



## List Regional Hostnames

**GET** `/zones/{zone_id}/addressing/regional_hostnames`

List all Regional Hostnames within a zone.

### Responses

#### 200 List hostnames response

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "hostname": "*string*",
    "region_key": "*string*",
    "routing": "*string*"
  }
]
```

#### 4XX Failure to list hostnames

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



## Update Regional Hostname

**PATCH** `/zones/{zone_id}/addressing/regional_hostnames/{hostname}`

Update the configuration for a specific Regional Hostname. Only the region_key of a hostname is mutable.

### Responses

#### 200 Update hostname response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "hostname": "*string*",
  "region_key": "*string*",
  "routing": "*string*"
}
```

#### 4XX Failure to update hostname

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



## Fetch Regional Hostname

**GET** `/zones/{zone_id}/addressing/regional_hostnames/{hostname}`

Fetch the configuration for a specific Regional Hostname, within a zone.

### Responses

#### 200 Fetch hostname response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "hostname": "*string*",
  "region_key": "*string*",
  "routing": "*string*"
}
```

#### 4XX Failure to fetch hostname

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



## Delete Regional Hostname

**DELETE** `/zones/{zone_id}/addressing/regional_hostnames/{hostname}`

Delete the region configuration for a specific Regional Hostname.

### Responses

#### 200 Delete hostname response

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

#### 4XX Failure to delete hostname

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


