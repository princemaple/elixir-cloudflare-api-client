# Zone-Level Access service tokens

## Create a service token

**POST** `/zones/{zone_id}/access/service_tokens`

Generates a new service token. **Note:** This is the only time you can get the Client Secret. If you lose the Client Secret, you will have to create a new service token.

### Responses

#### 201 Create a service token response

> Data is at `body["result"]`

```json
null
```

#### 4XX Create a service token response failure

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



## List service tokens

**GET** `/zones/{zone_id}/access/service_tokens`

Lists all service tokens.

### Responses

#### 200 List service tokens response

> Data is at `body["result"]`

```json
[
  {
    "client_id": "*string*",
    "created_at": "*string*",
    "duration": "*string*",
    "expires_at": "*string*",
    "id": "*string*",
    "last_seen_at": "*string*",
    "name": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX List service tokens response failure

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



## Update a service token

**PUT** `/zones/{zone_id}/access/service_tokens/{service_token_id}`

Updates a configured service token.

### Responses

#### 200 Update a service token response

> Data is at `body["result"]`

```json
{
  "client_id": "*string*",
  "created_at": "*string*",
  "duration": "*string*",
  "expires_at": "*string*",
  "id": "*string*",
  "last_seen_at": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update a service token response failure

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



## Get a service token

**GET** `/zones/{zone_id}/access/service_tokens/{service_token_id}`

Fetches a single service token.

### Responses

#### 200 Get a service token response

> Data is at `body["result"]`

```json
{
  "client_id": "*string*",
  "created_at": "*string*",
  "duration": "*string*",
  "expires_at": "*string*",
  "id": "*string*",
  "last_seen_at": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get a service token response failure

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



## Delete a service token

**DELETE** `/zones/{zone_id}/access/service_tokens/{service_token_id}`

Deletes a service token.

### Responses

#### 200 Delete a service token response

> Data is at `body["result"]`

```json
{
  "client_id": "*string*",
  "created_at": "*string*",
  "duration": "*string*",
  "expires_at": "*string*",
  "id": "*string*",
  "last_seen_at": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Delete a service token response failure

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


