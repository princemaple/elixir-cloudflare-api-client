# mTLS Certificate Management

## Upload mTLS certificate

**POST** `/accounts/{account_id}/mtls_certificates`

Upload a certificate that you want to use with mTLS-enabled Cloudflare services, such as Bring Your Own CA (BYO-CA) for mTLS. To create certificates issued by the Cloudflare managed CA, use the [Create Client Certificate endpoint](/api/resources/client_certificates/methods/create/).

### Responses

#### 200 Upload mTLS certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Upload mTLS certificate response failure

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

**GET** `/accounts/{account_id}/mtls_certificates`

Lists all mTLS certificates uploaded to your account, such as Bring Your Own CA (BYO-CA) for mTLS. To list certificates issued by the Cloudflare managed CA, use the [List Client Certificates endpoint](/api/resources/client_certificates/methods/list/).

### Responses

#### 200 List mTLS certificates response

> Data is at `body["result"]`

```json
[
  null
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



## Get mTLS certificate

**GET** `/accounts/{account_id}/mtls_certificates/{mtls_certificate_id}`

Fetches a single mTLS certificate uploaded to your account. To get a certificate issued by the Cloudflare managed CA, use the [Client Certificate Details endpoint](/api/resources/client_certificates/methods/get/).

### Responses

#### 200 Get mTLS certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get mTLS certificate response failure

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



## Delete mTLS certificate

**DELETE** `/accounts/{account_id}/mtls_certificates/{mtls_certificate_id}`

Deletes the mTLS certificate unless the certificate is in use by one or more Cloudflare services.

### Responses

#### 200 Delete mTLS certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete mTLS certificate response failure

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



## List mTLS certificate associations

**GET** `/accounts/{account_id}/mtls_certificates/{mtls_certificate_id}/associations`

Lists all active associations between the certificate and Cloudflare services.

### Responses

#### 200 List mTLS certificate associations response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List mTLS certificate associations response failure

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


