# Access mTLS authentication

## Add an mTLS certificate

**POST** `/accounts/{account_id}/access/certificates`

Adds a new mTLS root certificate to Access.

### Responses

#### 201 Add an mTLS certificate response

> Data is at `body["result"]`

```json
{
  "associated_hostnames": [
    "*string*"
  ],
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Add an mTLS certificate response failure

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



## List mTLS certificates

**GET** `/accounts/{account_id}/access/certificates`

Lists all mTLS root certificates.

### Responses

#### 200 List mTLS certificates response

> Data is at `body["result"]`

```json
[
  {
    "associated_hostnames": [
      "*string*"
    ],
    "created_at": null,
    "expires_on": "*string*",
    "fingerprint": "*string*",
    "id": "*string*",
    "name": "*string*",
    "updated_at": null
  }
]
```

#### 4XX List mTLS certificates response failure

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



## Update an mTLS certificate's hostname settings

**PUT** `/accounts/{account_id}/access/certificates/settings`

Updates an mTLS certificate's hostname settings.

### Responses

#### 202 Update an mTLS certificates hostname settings response

> Data is at `body["result"]`

```json
[
  {
    "china_network": "*boolean*",
    "client_certificate_forwarding": "*boolean*",
    "hostname": "*string*"
  }
]
```

#### 4XX Update an mTLS certificates hostname settings failure

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



## List all mTLS hostname settings

**GET** `/accounts/{account_id}/access/certificates/settings`

List all mTLS hostname settings for this account.

### Responses

#### 200 List mTLS hostname settings response

> Data is at `body["result"]`

```json
[
  {
    "china_network": "*boolean*",
    "client_certificate_forwarding": "*boolean*",
    "hostname": "*string*"
  }
]
```

#### 4XX List mTLS hostname settings response failure

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



## Update an mTLS certificate

**PUT** `/accounts/{account_id}/access/certificates/{certificate_id}`

Updates a configured mTLS certificate.

### Responses

#### 200 Update an mTLS certificate response

> Data is at `body["result"]`

```json
{
  "associated_hostnames": [
    "*string*"
  ],
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update an mTLS certificate response failure

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



## Get an mTLS certificate

**GET** `/accounts/{account_id}/access/certificates/{certificate_id}`

Fetches a single mTLS certificate.

### Responses

#### 200 Get an mTLS certificate response

> Data is at `body["result"]`

```json
{
  "associated_hostnames": [
    "*string*"
  ],
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get an mTLS certificate response failure

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



## Delete an mTLS certificate

**DELETE** `/accounts/{account_id}/access/certificates/{certificate_id}`

Deletes an mTLS certificate.

### Responses

#### 200 Delete an mTLS certificate response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an mTLS certificate response failure

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


