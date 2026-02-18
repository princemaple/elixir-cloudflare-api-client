# Access identity providers

## Add an Access identity provider

**POST** `/accounts/{account_id}/access/identity_providers`

Adds a new identity provider to Access.

### Responses

#### 201 Add an Access identity provider response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Add an Access identity provider response failure

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



## List Access identity providers

**GET** `/accounts/{account_id}/access/identity_providers`

Lists all configured identity providers.

### Responses

#### 200 List Access identity providers response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Access identity providers response failure

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



## Update an Access identity provider

**PUT** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}`

Updates a configured identity provider.

### Responses

#### 200 Update an Access identity provider response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update an Access identity provider response failure

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



## Get an Access identity provider

**GET** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}`

Fetches a configured identity provider.

### Responses

#### 200 Get an Access identity provider response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get an Access identity provider response failure

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



## Delete an Access identity provider

**DELETE** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}`

Deletes an identity provider from Access.

### Responses

#### 202 Delete an Access identity provider response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an Access identity provider response failure

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



## List SCIM Group resources

**GET** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}/scim/groups`

Lists SCIM Group resources synced to Cloudflare via the System for Cross-domain Identity Management (SCIM).

### Responses

#### 200 List SCIM Group resources response

> Data is at `body["result"]`

```json
[
  {
    "displayName": "*string*",
    "externalId": "*string*",
    "id": "*string*",
    "meta": {
      "created": "*string*",
      "lastModified": "*string*"
    },
    "schemas": [
      "*string*"
    ]
  }
]
```

#### 4XX List SCIM Group resources response failure

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



## List SCIM User resources

**GET** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}/scim/users`

Lists SCIM User resources synced to Cloudflare via the System for Cross-domain Identity Management (SCIM).

### Responses

#### 200 List SCIM User resources response

> Data is at `body["result"]`

```json
[
  {
    "active": "*boolean*",
    "displayName": "*string*",
    "emails": [
      {
        "primary": "*boolean*",
        "type": "*string*",
        "value": "*string*"
      }
    ],
    "externalId": "*string*",
    "id": "*string*",
    "meta": {
      "created": "*string*",
      "lastModified": "*string*"
    },
    "schemas": [
      "*string*"
    ]
  }
]
```

#### 4XX List SCIM User resources response failure

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


