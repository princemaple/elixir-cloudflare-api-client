# API Shield Client Certificates for a Zone

## Replace Hostname Associations

**PUT** `/zones/{zone_id}/certificate_authorities/hostname_associations`

Replace Hostname Associations

### Responses

#### 200 Replace Hostname Associations Response

> Data is at `body["result"]`

```json
{
  "hostnames": [
    "*string*"
  ]
}
```

#### 4XX Replace Hostname Associations Response Failure

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



## List Hostname Associations

**GET** `/zones/{zone_id}/certificate_authorities/hostname_associations`

List Hostname Associations

### Responses

#### 200 List Hostname Associations Response

> Data is at `body["result"]`

```json
{
  "hostnames": [
    "*string*"
  ]
}
```

#### 4XX List Hostname Associations Response Failure

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



## Create Client Certificate

**POST** `/zones/{zone_id}/client_certificates`

Create a new API Shield mTLS Client Certificate

### Responses

#### 200 Create Client Certificate Response

> Data is at `body["result"]`

```json
null
```

#### 4XX Create Client Certificate Response Failure

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



## List Client Certificates

**GET** `/zones/{zone_id}/client_certificates`

List all of your Zone's API Shield mTLS Client Certificates by Status and/or using Pagination

### Responses

#### 200 List Client Certificates Response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Client Certificates Response Failure

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



## Reactivate Client Certificate

**PATCH** `/zones/{zone_id}/client_certificates/{client_certificate_id}`

If a API Shield mTLS Client Certificate is in a pending_revocation state, you may reactivate it with this endpoint.

### Responses

#### 200 Reactivate Client Certificate Response

> Data is at `body["result"]`

```json
null
```

#### 4XX Reactivate Client Certificate Response Failure

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



## Client Certificate Details

**GET** `/zones/{zone_id}/client_certificates/{client_certificate_id}`

Get Details for a single mTLS API Shield Client Certificate

### Responses

#### 200 Client Certificate Details Response

> Data is at `body["result"]`

```json
null
```

#### 4XX Client Certificate Details Response Failure

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



## Revoke Client Certificate

**DELETE** `/zones/{zone_id}/client_certificates/{client_certificate_id}`

Set a API Shield mTLS Client Certificate to pending_revocation status for processing to revoked status.

### Responses

#### 200 Revoke Client Certificate Response

> Data is at `body["result"]`

```json
null
```

#### 4XX Revoke Client Certificate Response Failure

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


