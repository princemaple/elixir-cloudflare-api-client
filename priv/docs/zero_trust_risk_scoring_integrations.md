# Zero Trust Risk Scoring Integrations

## Create new risk score integration.

**POST** `/accounts/{account_id}/zt_risk_scoring/integrations`



### Responses

#### 200 Create response.

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "active": "*boolean*",
  "created_at": "*string*",
  "id": "*string*",
  "integration_type": "*string*",
  "reference_id": "*string*",
  "tenant_url": "*string*",
  "well_known_url": "*string*"
}
```

#### 4XX Create failure response.

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



## List all risk score integrations for the account.

**GET** `/accounts/{account_id}/zt_risk_scoring/integrations`



### Responses

#### 200 List response.

> Data is at `body["result"]`

```json
[
  {
    "account_tag": "*string*",
    "active": "*boolean*",
    "created_at": "*string*",
    "id": "*string*",
    "integration_type": "*string*",
    "reference_id": "*string*",
    "tenant_url": "*string*",
    "well_known_url": "*string*"
  }
]
```

#### 4XX List failure response.

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



## Get risk score integration by reference id.

**GET** `/accounts/{account_id}/zt_risk_scoring/integrations/reference_id/{reference_id}`



### Responses

#### 200 Get response.

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "active": "*boolean*",
  "created_at": "*string*",
  "id": "*string*",
  "integration_type": "*string*",
  "reference_id": "*string*",
  "tenant_url": "*string*",
  "well_known_url": "*string*"
}
```

#### 4XX Get failure response.

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



## Update a risk score integration.

**PUT** `/accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`

Overwrite the reference_id, tenant_url, and active values with the ones provided.

### Responses

#### 200 Update response.

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "active": "*boolean*",
  "created_at": "*string*",
  "id": "*string*",
  "integration_type": "*string*",
  "reference_id": "*string*",
  "tenant_url": "*string*",
  "well_known_url": "*string*"
}
```

#### 4XX Update failure response.

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



## Get risk score integration by id.

**GET** `/accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`



### Responses

#### 200 Get response.

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "active": "*boolean*",
  "created_at": "*string*",
  "id": "*string*",
  "integration_type": "*string*",
  "reference_id": "*string*",
  "tenant_url": "*string*",
  "well_known_url": "*string*"
}
```

#### 4XX Get failure response.

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



## Delete a risk score integration.

**DELETE** `/accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`



### Responses

#### 200 Delete response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete failure response.

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


