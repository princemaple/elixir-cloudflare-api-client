# Tenants

## Get tenant

**GET** `/tenants/{tenant_id}`

Retrieves a Tenant by Tenant ID.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "cdate": "*string*",
  "customer_id": "*string*",
  "edate": "*string*",
  "tenant_contacts": {
    "email": "*string*",
    "website": "*string*"
  },
  "tenant_labels": [
    "*string*"
  ],
  "tenant_metadata": {
    "dns": {
      "ns_pool": {
        "primary": "*string*",
        "secondary": "*string*"
      }
    }
  },
  "tenant_name": "*string*",
  "tenant_network": {},
  "tenant_status": "*string*",
  "tenant_tag": "*string*",
  "tenant_type": "*string*",
  "tenant_units": [
    {
      "unit_memberships": [
        {}
      ],
      "unit_metadata": {},
      "unit_name": "*string*",
      "unit_status": "*string*",
      "unit_tag": "*string*"
    }
  ]
}
```

#### 4XX An unexpected error response.

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



## Get tenant account types

**GET** `/tenants/{tenant_id}/account_types`

List of account types available for the Tenant to provision accounts.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  "*string*"
]
```

#### 4XX An unexpected error response.

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



## List tenant accounts

**GET** `/tenants/{tenant_id}/accounts`

List of accounts for the Tenant.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "id": "*string*",
    "name": "*string*",
    "settings": {
      "abuse_contact_email": "*string*",
      "access_approval_expiry": "*string*",
      "api_access_enabled": "*boolean*",
      "default_nameservers": "*string*",
      "enforce_twofactor": "*boolean*",
      "use_account_custom_ns_by_default": "*boolean*"
    },
    "type": "*string*"
  }
]
```

#### 4XX An unexpected error response.

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



## List tenant entitlements

**GET** `/tenants/{tenant_id}/entitlements`

List of innate entitlements available for the Tenant.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "allow_add_subdomain": {
    "type": "*string*",
    "value": "*boolean*"
  },
  "allow_auto_accept_invites": {
    "type": "*string*",
    "value": "*boolean*"
  },
  "cname_setup_allowed": {
    "type": "*string*",
    "value": "*boolean*"
  },
  "custom_entitlements": [
    {
      "allocation": null,
      "feature": {
        "key": null
      }
    }
  ],
  "mhs_certificate_count": {
    "type": "*string*",
    "value": "*integer*"
  },
  "partial_setup_allowed": {
    "type": "*string*",
    "value": "*boolean*"
  }
}
```

#### 4XX An unexpected error response.

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



## List tenant memberships

**GET** `/tenants/{tenant_id}/memberships`

List of active members (Cloudflare users) for the Tenant.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "user_email": "*string*",
    "user_name": "*string*",
    "user_tag": "*string*"
  }
]
```

#### 4XX An unexpected error response.

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


