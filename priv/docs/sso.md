# SSO

## Initialize new SSO connector

**POST** `/accounts/{account_id}/sso_connectors`



### Responses

#### 200 Initialize new SSO connector response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "email_domain": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "updated_on": "*string*",
  "use_fedramp_language": "*boolean*",
  "verification": {
    "code": "*string*",
    "status": "*string*"
  }
}
```

#### 4XX Initialize new SSO connector response failure

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



## Get all SSO connectors

**GET** `/accounts/{account_id}/sso_connectors`



### Responses

#### 200 Get all SSO connectors response

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "email_domain": "*string*",
    "enabled": "*boolean*",
    "id": null,
    "updated_on": "*string*",
    "use_fedramp_language": "*boolean*",
    "verification": {
      "code": null,
      "status": "*string*"
    }
  }
]
```

#### 4XX Get all SSO connectors response failure

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



## Update SSO connector state

**PATCH** `/accounts/{account_id}/sso_connectors/{sso_connector_id}`



### Responses

#### 200 Update SSO connector state response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "email_domain": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "updated_on": "*string*",
  "use_fedramp_language": "*boolean*",
  "verification": {
    "code": "*string*",
    "status": "*string*"
  }
}
```

#### 4XX Update SSO connector state response failure

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



## Get single SSO connector

**GET** `/accounts/{account_id}/sso_connectors/{sso_connector_id}`



### Responses

#### 200 Get SSO connector response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "email_domain": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "updated_on": "*string*",
  "use_fedramp_language": "*boolean*",
  "verification": {
    "code": "*string*",
    "status": "*string*"
  }
}
```

#### 4XX Get SSO connector response failure

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



## Delete SSO connector

**DELETE** `/accounts/{account_id}/sso_connectors/{sso_connector_id}`



### Responses

#### 200 Delete SSO connector response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete SSO connector response failure

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



## Begin SSO connector verification

**POST** `/accounts/{account_id}/sso_connectors/{sso_connector_id}/begin_verification`



### Responses

#### 200 Begin SSO connector verification process response

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

#### 4XX Begin SSO connector verification process response failure

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


