# Registrar Domains

## List domains

**GET** `/accounts/{account_id}/registrar/domains`

List domains handled by Registrar.

### Responses

#### 200 List domains response

> Data is at `body["result"]`

```json
[
  {
    "available": "*boolean*",
    "can_register": "*boolean*",
    "created_at": "*string*",
    "current_registrar": "*string*",
    "expires_at": "*string*",
    "id": "*string*",
    "locked": "*boolean*",
    "registrant_contact": null,
    "registry_statuses": "*string*",
    "supported_tld": "*boolean*",
    "transfer_in": null,
    "updated_at": "*string*"
  }
]
```

#### 4XX List domains response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update domain

**PUT** `/accounts/{account_id}/registrar/domains/{domain_name}`

Update individual domain.

### Responses

#### 200 Update domain response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update domain response failure

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



## Get domain

**GET** `/accounts/{account_id}/registrar/domains/{domain_name}`

Show individual domain.

### Responses

#### 200 Get domain response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get domain response failure

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


