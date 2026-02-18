# Worker Domain

## Attach to Domain

**PUT** `/accounts/{account_id}/workers/domains`

Attaches a Worker to a zone and hostname.

### Responses

#### 200 Attach to Domain response.

> Data is at `body["result"]`

```json
{
  "environment": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "service": "*string*",
  "zone_id": "*string*",
  "zone_name": "*string*"
}
```

#### 4XX Attach to Domain response failure.

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



## List Domains

**GET** `/accounts/{account_id}/workers/domains`

Lists all Worker Domains for an account.

### Responses

#### 200 List Domains response.

> Data is at `body["result"]`

```json
[
  {
    "environment": "*string*",
    "hostname": "*string*",
    "id": "*string*",
    "service": "*string*",
    "zone_id": "*string*",
    "zone_name": "*string*"
  }
]
```

#### 4XX List Domains response failure.

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



## Get a Domain

**GET** `/accounts/{account_id}/workers/domains/{domain_id}`

Gets a Worker domain.

### Responses

#### 200 Get a Domain response.

> Data is at `body["result"]`

```json
{
  "environment": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "service": "*string*",
  "zone_id": "*string*",
  "zone_name": "*string*"
}
```

#### 4XX Get a Domain response failure.

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



## Detach from Domain

**DELETE** `/accounts/{account_id}/workers/domains/{domain_id}`

Detaches a Worker from a zone and hostname.

### Responses

#### 200 Detach from Domain response.

> Data is at `body["result"]`

```json

```

#### 4XX Detach from Domain response failure.

```json

```


