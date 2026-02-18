# Custom SSL for a Zone

## Create SSL Configuration

**POST** `/zones/{zone_id}/custom_certificates`

Upload a new SSL certificate for a zone.

### Responses

#### 200 Create SSL Configuration response

> Data is at `body["result"]`

```json
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
  "keyless_server": {
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
  },
  "modified_on": "*string*",
  "policy_restrictions": "*string*",
  "priority": "*number*",
  "signature": "*string*",
  "status": "*string*",
  "uploaded_on": "*string*",
  "zone_id": "*string*"
}
```

#### 4XX Create SSL Configuration response failure

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



## List SSL Configurations

**GET** `/zones/{zone_id}/custom_certificates`

List, search, and filter all of your custom SSL certificates. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.

### Responses

#### 200 List SSL Configurations response

> Data is at `body["result"]`

```json
[
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
    "keyless_server": null,
    "modified_on": "*string*",
    "policy_restrictions": "*string*",
    "priority": "*number*",
    "signature": "*string*",
    "status": "*string*",
    "uploaded_on": "*string*",
    "zone_id": "*string*"
  }
]
```

#### 4XX List SSL Configurations response failure

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



## Re-prioritize SSL Certificates

**PUT** `/zones/{zone_id}/custom_certificates/prioritize`

If a zone has multiple SSL certificates, you can set the order in which they should be used during a request. The higher priority will break ties across overlapping 'legacy_custom' certificates.

### Responses

#### 200 Re-prioritize SSL Certificates response

> Data is at `body["result"]`

```json
[
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
    "keyless_server": null,
    "modified_on": "*string*",
    "policy_restrictions": "*string*",
    "priority": "*number*",
    "signature": "*string*",
    "status": "*string*",
    "uploaded_on": "*string*",
    "zone_id": "*string*"
  }
]
```

#### 4XX Re-prioritize SSL Certificates response failure

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



## Edit SSL Configuration

**PATCH** `/zones/{zone_id}/custom_certificates/{custom_certificate_id}`

Upload a new private key and/or PEM/CRT for the SSL certificate. Note: PATCHing a configuration for sni_custom certificates will result in a new resource id being returned, and the previous one being deleted.

### Responses

#### 200 Edit SSL Configuration response

> Data is at `body["result"]`

```json
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
  "keyless_server": {
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
  },
  "modified_on": "*string*",
  "policy_restrictions": "*string*",
  "priority": "*number*",
  "signature": "*string*",
  "status": "*string*",
  "uploaded_on": "*string*",
  "zone_id": "*string*"
}
```

#### 4XX Edit SSL Configuration response failure

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



## SSL Configuration Details

**GET** `/zones/{zone_id}/custom_certificates/{custom_certificate_id}`



### Responses

#### 200 SSL Configuration Details response

> Data is at `body["result"]`

```json
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
  "keyless_server": {
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
  },
  "modified_on": "*string*",
  "policy_restrictions": "*string*",
  "priority": "*number*",
  "signature": "*string*",
  "status": "*string*",
  "uploaded_on": "*string*",
  "zone_id": "*string*"
}
```

#### 4XX SSL Configuration Details response failure

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



## Delete SSL Configuration

**DELETE** `/zones/{zone_id}/custom_certificates/{custom_certificate_id}`

Remove a SSL certificate from a zone.

### Responses

#### 200 Delete SSL Configuration response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete SSL Configuration response failure

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


