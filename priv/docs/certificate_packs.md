# Certificate Packs

## List Certificate Packs

**GET** `/zones/{zone_id}/ssl/certificate_packs`

For a given zone, list all active certificate packs.

### Responses

#### 200 List Certificate Packs response

> Data is at `body["result"]`

```json
[
  {
    "certificate_authority": "*string*",
    "certificates": [
      {
        "bundle_method": null,
        "expires_on": null,
        "geo_restrictions": null,
        "hosts": null,
        "id": null,
        "issuer": null,
        "modified_on": null,
        "priority": null,
        "signature": null,
        "status": null,
        "uploaded_on": null,
        "zone_id": null
      }
    ],
    "cloudflare_branding": "*boolean*",
    "dcv_delegation_records": [
      {
        "cname": null,
        "cname_target": null,
        "emails": null,
        "http_body": null,
        "http_url": null,
        "status": null,
        "txt_name": null,
        "txt_value": null
      }
    ],
    "hosts": [
      "*string*"
    ],
    "id": "*string*",
    "primary_certificate": "*string*",
    "status": "*string*",
    "type": "*string*",
    "validation_errors": [
      {
        "message": "*string*"
      }
    ],
    "validation_method": "*string*",
    "validation_records": [
      {
        "cname": null,
        "cname_target": null,
        "emails": null,
        "http_body": null,
        "http_url": null,
        "status": null,
        "txt_name": null,
        "txt_value": null
      }
    ],
    "validity_days": "*integer*"
  }
]
```

#### 4XX List Certificate Packs response failure

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



## Order Advanced Certificate Manager Certificate Pack

**POST** `/zones/{zone_id}/ssl/certificate_packs/order`

For a given zone, order an advanced certificate pack.

### Responses

#### 200 Order Advanced Certificate Manager Certificate Pack response

> Data is at `body["result"]`

```json
{
  "certificate_authority": "*string*",
  "certificates": [
    {
      "bundle_method": "*string*",
      "expires_on": "*string*",
      "geo_restrictions": {
        "label": "*string*"
      },
      "hosts": [
        "*string*"
      ],
      "id": "*string*",
      "issuer": "*string*",
      "modified_on": "*string*",
      "priority": "*number*",
      "signature": "*string*",
      "status": "*string*",
      "uploaded_on": "*string*",
      "zone_id": "*string*"
    }
  ],
  "cloudflare_branding": "*boolean*",
  "dcv_delegation_records": [
    {
      "cname": "*string*",
      "cname_target": "*string*",
      "emails": [
        "*string*"
      ],
      "http_body": "*string*",
      "http_url": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    }
  ],
  "hosts": [
    "*string*"
  ],
  "id": "*string*",
  "primary_certificate": "*string*",
  "status": "*string*",
  "type": "*string*",
  "validation_errors": [
    {
      "message": "*string*"
    }
  ],
  "validation_method": "*string*",
  "validation_records": [
    {
      "cname": "*string*",
      "cname_target": "*string*",
      "emails": [
        "*string*"
      ],
      "http_body": "*string*",
      "http_url": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    }
  ],
  "validity_days": "*integer*"
}
```

#### 4XX Order Advanced Certificate Manager Certificate Pack response failure

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



## Get Certificate Pack Quotas

**GET** `/zones/{zone_id}/ssl/certificate_packs/quota`

For a given zone, list certificate pack quotas.

### Responses

#### 200 Get Certificate Pack Quotas response

> Data is at `body["result"]`

```json
{
  "advanced": {
    "allocated": "*integer*",
    "used": "*integer*"
  }
}
```

#### 4XX Get Certificate Pack Quotas response failure

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



## Restart Validation or Update Advanced Certificate Manager Certificate Pack

**PATCH** `/zones/{zone_id}/ssl/certificate_packs/{certificate_pack_id}`

For a given zone, restart validation or add cloudflare branding for an advanced certificate pack.  The former is only a validation operation for a Certificate Pack in a validation_timed_out status.

### Responses

#### 200 Restart Validation for Advanced Certificate Manager Certificate Pack response

> Data is at `body["result"]`

```json
{
  "certificate_authority": "*string*",
  "certificates": [
    {
      "bundle_method": "*string*",
      "expires_on": "*string*",
      "geo_restrictions": {
        "label": "*string*"
      },
      "hosts": [
        "*string*"
      ],
      "id": "*string*",
      "issuer": "*string*",
      "modified_on": "*string*",
      "priority": "*number*",
      "signature": "*string*",
      "status": "*string*",
      "uploaded_on": "*string*",
      "zone_id": "*string*"
    }
  ],
  "cloudflare_branding": "*boolean*",
  "dcv_delegation_records": [
    {
      "cname": "*string*",
      "cname_target": "*string*",
      "emails": [
        "*string*"
      ],
      "http_body": "*string*",
      "http_url": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    }
  ],
  "hosts": [
    "*string*"
  ],
  "id": "*string*",
  "primary_certificate": "*string*",
  "status": "*string*",
  "type": "*string*",
  "validation_errors": [
    {
      "message": "*string*"
    }
  ],
  "validation_method": "*string*",
  "validation_records": [
    {
      "cname": "*string*",
      "cname_target": "*string*",
      "emails": [
        "*string*"
      ],
      "http_body": "*string*",
      "http_url": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    }
  ],
  "validity_days": "*integer*"
}
```

#### 4XX Restart Validation for Advanced Certificate Manager Certificate Pack response failure

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



## Get Certificate Pack

**GET** `/zones/{zone_id}/ssl/certificate_packs/{certificate_pack_id}`

For a given zone, get a certificate pack.

### Responses

#### 200 Get Certificate Pack response

> Data is at `body["result"]`

```json
{
  "certificate_authority": "*string*",
  "certificates": [
    {
      "bundle_method": "*string*",
      "expires_on": "*string*",
      "geo_restrictions": {
        "label": "*string*"
      },
      "hosts": [
        "*string*"
      ],
      "id": "*string*",
      "issuer": "*string*",
      "modified_on": "*string*",
      "priority": "*number*",
      "signature": "*string*",
      "status": "*string*",
      "uploaded_on": "*string*",
      "zone_id": "*string*"
    }
  ],
  "cloudflare_branding": "*boolean*",
  "dcv_delegation_records": [
    {
      "cname": "*string*",
      "cname_target": "*string*",
      "emails": [
        "*string*"
      ],
      "http_body": "*string*",
      "http_url": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    }
  ],
  "hosts": [
    "*string*"
  ],
  "id": "*string*",
  "primary_certificate": "*string*",
  "status": "*string*",
  "type": "*string*",
  "validation_errors": [
    {
      "message": "*string*"
    }
  ],
  "validation_method": "*string*",
  "validation_records": [
    {
      "cname": "*string*",
      "cname_target": "*string*",
      "emails": [
        "*string*"
      ],
      "http_body": "*string*",
      "http_url": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    }
  ],
  "validity_days": "*integer*"
}
```

#### 4XX Get Certificate Pack response failure

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



## Delete Advanced Certificate Manager Certificate Pack

**DELETE** `/zones/{zone_id}/ssl/certificate_packs/{certificate_pack_id}`

For a given zone, delete an advanced certificate pack.

### Responses

#### 200 Delete Advanced Certificate Manager Certificate Pack response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Advanced Certificate Manager Certificate Pack response failure

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


