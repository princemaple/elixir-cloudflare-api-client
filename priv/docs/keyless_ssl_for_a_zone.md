# Keyless SSL for a Zone

## Create Keyless SSL Configuration

**POST** `/zones/{zone_id}/keyless_certificates`



### Responses

#### 200 Create Keyless SSL Configuration response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "enabled": "*boolean*",
  "host": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "permissions": [
    "*string*"
  ],
  "port": "*number*",
  "status": "*string*",
  "tunnel": {
    "private_ip": "*string*",
    "vnet_id": "*string*"
  }
}
```

#### 4XX Create Keyless SSL Configuration response failure

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



## List Keyless SSL Configurations

**GET** `/zones/{zone_id}/keyless_certificates`

List all Keyless SSL configurations for a given zone.

### Responses

#### 200 List Keyless SSL Configurations response

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "enabled": "*boolean*",
    "host": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "permissions": [
      "*string*"
    ],
    "port": "*number*",
    "status": "*string*",
    "tunnel": {
      "private_ip": null,
      "vnet_id": null
    }
  }
]
```

#### 4XX List Keyless SSL Configurations response failure

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



## Edit Keyless SSL Configuration

**PATCH** `/zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`

This will update attributes of a Keyless SSL. Consists of one or more of the following:  host,name,port.

### Responses

#### 200 Edit Keyless SSL Configuration response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "enabled": "*boolean*",
  "host": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "permissions": [
    "*string*"
  ],
  "port": "*number*",
  "status": "*string*",
  "tunnel": {
    "private_ip": "*string*",
    "vnet_id": "*string*"
  }
}
```

#### 4XX Edit Keyless SSL Configuration response failure

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



## Get Keyless SSL Configuration

**GET** `/zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`

Get details for one Keyless SSL configuration.

### Responses

#### 200 Get Keyless SSL Configuration response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "enabled": "*boolean*",
  "host": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "permissions": [
    "*string*"
  ],
  "port": "*number*",
  "status": "*string*",
  "tunnel": {
    "private_ip": "*string*",
    "vnet_id": "*string*"
  }
}
```

#### 4XX Get Keyless SSL Configuration response failure

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



## Delete Keyless SSL Configuration

**DELETE** `/zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`



### Responses

#### 200 Delete Keyless SSL Configuration response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Keyless SSL Configuration response failure

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


