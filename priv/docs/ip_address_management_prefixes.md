# IP Address Management Prefixes

## Upload LOA Document

**POST** `/accounts/{account_id}/addressing/loa_documents`

Submit LOA document (pdf format) under the account.

### Responses

#### 201 Upload LOA Document response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "auto_generated": "*boolean*",
  "created": "*string*",
  "filename": "*string*",
  "id": "*string*",
  "size_bytes": "*integer*",
  "verified": "*boolean*",
  "verified_at": "*string*"
}
```

#### 4XX Upload LOA Document response failure

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



## Download LOA Document

**GET** `/accounts/{account_id}/addressing/loa_documents/{loa_document_id}/download`

Download specified LOA document under the account.

### Responses

#### 200 Download LOA Document response

> Data is at `body["result"]`

```json

```

#### 4XX Download LOA Document response failure

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



## Add Prefix

**POST** `/accounts/{account_id}/addressing/prefixes`

Add a new prefix under the account.

### Responses

#### 201 Add Prefix response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "advertised": "*boolean*",
  "advertised_modified_at": "*string*",
  "approved": "*string*",
  "asn": "*integer*",
  "cidr": "*string*",
  "created_at": "*string*",
  "delegate_loa_creation": "*boolean*",
  "description": "*string*",
  "id": "*string*",
  "irr_validation_state": "*string*",
  "loa_document_id": "*string*",
  "modified_at": "*string*",
  "on_demand_enabled": "*boolean*",
  "on_demand_locked": "*boolean*",
  "ownership_validation_state": "*string*",
  "ownership_validation_token": "*string*",
  "rpki_validation_state": "*string*"
}
```

#### 4XX Add Prefix response failure

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



## List Prefixes

**GET** `/accounts/{account_id}/addressing/prefixes`

List all prefixes owned by the account.

### Responses

#### 200 List Prefixes response

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "advertised": "*boolean*",
    "advertised_modified_at": "*string*",
    "approved": "*string*",
    "asn": "*integer*",
    "cidr": "*string*",
    "created_at": "*string*",
    "delegate_loa_creation": "*boolean*",
    "description": "*string*",
    "id": "*string*",
    "irr_validation_state": "*string*",
    "loa_document_id": "*string*",
    "modified_at": "*string*",
    "on_demand_enabled": "*boolean*",
    "on_demand_locked": "*boolean*",
    "ownership_validation_state": "*string*",
    "ownership_validation_token": "*string*",
    "rpki_validation_state": "*string*"
  }
]
```

#### 4XX List Prefixes response failure

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



## Update Prefix Description

**PATCH** `/accounts/{account_id}/addressing/prefixes/{prefix_id}`

Modify the description for a prefix owned by the account.

### Responses

#### 200 Update Prefix Description response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "advertised": "*boolean*",
  "advertised_modified_at": "*string*",
  "approved": "*string*",
  "asn": "*integer*",
  "cidr": "*string*",
  "created_at": "*string*",
  "delegate_loa_creation": "*boolean*",
  "description": "*string*",
  "id": "*string*",
  "irr_validation_state": "*string*",
  "loa_document_id": "*string*",
  "modified_at": "*string*",
  "on_demand_enabled": "*boolean*",
  "on_demand_locked": "*boolean*",
  "ownership_validation_state": "*string*",
  "ownership_validation_token": "*string*",
  "rpki_validation_state": "*string*"
}
```

#### 4XX Update Prefix Description response failure

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



## Prefix Details

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}`

List a particular prefix owned by the account.

### Responses

#### 200 Prefix Details response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "advertised": "*boolean*",
  "advertised_modified_at": "*string*",
  "approved": "*string*",
  "asn": "*integer*",
  "cidr": "*string*",
  "created_at": "*string*",
  "delegate_loa_creation": "*boolean*",
  "description": "*string*",
  "id": "*string*",
  "irr_validation_state": "*string*",
  "loa_document_id": "*string*",
  "modified_at": "*string*",
  "on_demand_enabled": "*boolean*",
  "on_demand_locked": "*boolean*",
  "ownership_validation_state": "*string*",
  "ownership_validation_token": "*string*",
  "rpki_validation_state": "*string*"
}
```

#### 4XX Prefix Details response failure

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



## Delete Prefix

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}`

Delete an unapproved prefix owned by the account.

### Responses

#### 200 Delete Prefix response

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

#### 4XX Delete Prefix response failure

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



## Validate Prefix

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/validate`

Triggers a new prefix validation. The checks are run asynchronously and include IRR, RPKI, and prefix ownership.

### Responses

#### 202 Validate Prefix response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "advertised": "*boolean*",
  "advertised_modified_at": "*string*",
  "approved": "*string*",
  "asn": "*integer*",
  "cidr": "*string*",
  "created_at": "*string*",
  "delegate_loa_creation": "*boolean*",
  "description": "*string*",
  "id": "*string*",
  "irr_validation_state": "*string*",
  "loa_document_id": "*string*",
  "modified_at": "*string*",
  "on_demand_enabled": "*boolean*",
  "on_demand_locked": "*boolean*",
  "ownership_validation_state": "*string*",
  "ownership_validation_token": "*string*",
  "rpki_validation_state": "*string*"
}
```

#### 4XX Validate Prefix response failure

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


