# Zone-Level Access identity providers

## Add an Access identity provider

**POST** `/zones/{zone_id}/access/identity_providers`

Adds a new identity provider to Access.

### Responses

#### 201 Add an Access identity provider response

> Data is at `body["result"]`

```json
null
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

**GET** `/zones/{zone_id}/access/identity_providers`

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

**PUT** `/zones/{zone_id}/access/identity_providers/{identity_provider_id}`

Updates a configured identity provider.

### Responses

#### 200 Update an Access identity provider response

> Data is at `body["result"]`

```json
null
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

**GET** `/zones/{zone_id}/access/identity_providers/{identity_provider_id}`

Fetches a configured identity provider.

### Responses

#### 200 Get an Access identity provider response

> Data is at `body["result"]`

```json
null
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

**DELETE** `/zones/{zone_id}/access/identity_providers/{identity_provider_id}`

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


