# DLP Email

## Create mapping

**POST** `/accounts/{account_id}/dlp/email/account_mapping`



### Responses

#### 200 New Email Scanner Account Mapping response.

> Data is at `body["result"]`

```json
{
  "addin_identifier_token": "*string*",
  "auth_requirements": null
}
```

#### 4XX New Email Scanner Account Mapping failure response.

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



## Get mapping

**GET** `/accounts/{account_id}/dlp/email/account_mapping`



### Responses

#### 200 Get Email Scanner Account Mapping response.

> Data is at `body["result"]`

```json
{
  "addin_identifier_token": "*string*",
  "auth_requirements": null
}
```

#### 4XX Get Email Scanner Account Mapping failure response.

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



## Create email scanner rule

**POST** `/accounts/{account_id}/dlp/email/rules`



### Responses

#### 200 New Email Scanner Rule response.

> Data is at `body["result"]`

```json
{
  "action": null,
  "conditions": [
    {
      "operator": "*string*",
      "selector": "*string*",
      "value": null
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "name": "*string*",
  "priority": "*integer*",
  "rule_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX New Email Scanner Rule failure response.

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



## Update email scanner rule priorities

**PATCH** `/accounts/{account_id}/dlp/email/rules`



### Responses

#### 200 Update Email Scanner Rule priorities response.

> Data is at `body["result"]`

```json
{
  "action": null,
  "conditions": [
    {
      "operator": "*string*",
      "selector": "*string*",
      "value": null
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "name": "*string*",
  "priority": "*integer*",
  "rule_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update Email Scanner Rule priorities failure response.

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



## List all email scanner rules

**GET** `/accounts/{account_id}/dlp/email/rules`

Lists all email scanner rules for an account.

### Responses

#### 200 List all email scanner rules response.

> Data is at `body["result"]`

```json
[
  {
    "action": null,
    "conditions": [
      {
        "operator": null,
        "selector": null,
        "value": null
      }
    ],
    "created_at": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "name": "*string*",
    "priority": "*integer*",
    "rule_id": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX List all email scanner rules failure response.

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



## Update email scanner rule

**PUT** `/accounts/{account_id}/dlp/email/rules/{rule_id}`



### Responses

#### 200 Update Email Scanner Rule response.

> Data is at `body["result"]`

```json
{
  "action": null,
  "conditions": [
    {
      "operator": "*string*",
      "selector": "*string*",
      "value": null
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "name": "*string*",
  "priority": "*integer*",
  "rule_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update Email Scanner Rule failure response.

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



## Get an email scanner rule

**GET** `/accounts/{account_id}/dlp/email/rules/{rule_id}`



### Responses

#### 200 Get Email Scanner Rule response.

> Data is at `body["result"]`

```json
{
  "action": null,
  "conditions": [
    {
      "operator": "*string*",
      "selector": "*string*",
      "value": null
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "name": "*string*",
  "priority": "*integer*",
  "rule_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get Email Scanner Rule failure response.

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



## Delete email scanner rule

**DELETE** `/accounts/{account_id}/dlp/email/rules/{rule_id}`



### Responses

#### 200 Delete Email Scanner Rule response.

> Data is at `body["result"]`

```json
{
  "action": null,
  "conditions": [
    {
      "operator": "*string*",
      "selector": "*string*",
      "value": null
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "name": "*string*",
  "priority": "*integer*",
  "rule_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Delete Email Scanner Rule failure response.

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


