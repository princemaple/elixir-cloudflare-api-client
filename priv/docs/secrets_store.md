# Secrets Store

## View secret usage

**GET** `/accounts/{account_id}/secrets_store/quota`

Lists the number of secrets used in the account.

### Responses

#### 200 Usage and quota

> Data is at `body["result"]`

```json
null
```

#### 4XX List store secrets response failure

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



## Create a store

**POST** `/accounts/{account_id}/secrets_store/stores`

Creates a store in the account

### Responses

#### 200 store details

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List store secrets response failure

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



## List account stores

**GET** `/accounts/{account_id}/secrets_store/stores`

Lists all the stores in an account

### Responses

#### 200 List account stores response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List account stores response failure

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



## Delete a store

**DELETE** `/accounts/{account_id}/secrets_store/stores/{store_id}`

Deletes a single store

### Responses

#### 200 store details

> Data is at `body["result"]`

```json
null
```

#### 4XX failure

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



## Create a secret

**POST** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets`

Creates a secret in the account

### Responses

#### 200 secret detail

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List store secrets response failure

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



## List store secrets

**GET** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets`

Lists all store secrets

### Responses

#### 200 List store secrets response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List store secrets response failure

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



## Delete secrets

**DELETE** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets`

Deletes one or more secrets

### Responses

#### 200 secret detail

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List store secrets response failure

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



## Patch a secret

**PATCH** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`

Updates a single secret

### Responses

#### 200 secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX failure

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



## Get a secret by ID

**GET** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`

Returns details of a single secret

### Responses

#### 200 secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX failure

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



## Delete a secret

**DELETE** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`

Deletes a single secret

### Responses

#### 200 secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX failure

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



## Duplicate Secret

**POST** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}/duplicate`

Duplicates the secret, keeping the value

### Responses

#### 200 secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX failure

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



## Create a store (System)

**POST** `/system/accounts/{account_tag}/stores`

Creates a store in the account on behalf of the calling service.
The store will be marked as managed by the authenticated service.
Requires account_id in the request body.


### Responses

#### 200 Store details

> Data is at `body["result"]`

```json
null
```

#### 4XX Create store failure

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



## List account stores (System)

**GET** `/system/accounts/{account_tag}/stores`

Lists all stores in an account that are managed by the calling service.
Only returns stores where managed_by matches the authenticated service.


### Responses

#### 200 List account stores response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List account stores response failure

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



## Delete a store (System)

**DELETE** `/system/accounts/{account_tag}/stores/{store_id}`

Deletes a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Store deleted

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete store failure

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



## Create secrets (System)

**POST** `/system/accounts/{account_tag}/stores/{store_id}/secrets`

Creates one or more secrets in a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Secret detail

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Create secrets failure

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



## List store secrets (System)

**GET** `/system/accounts/{account_tag}/stores/{store_id}/secrets`

Lists all secrets in a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 List store secrets response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List store secrets response failure

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



## Delete secrets (System)

**DELETE** `/system/accounts/{account_tag}/stores/{store_id}/secrets`

Deletes one or more secrets from a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Secret detail

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Delete secrets failure

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



## Patch a secret (System)

**PATCH** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`

Updates a single secret in a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX Patch secret failure

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



## Get a secret by ID (System)

**GET** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`

Returns details of a single secret from a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX Get secret failure

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



## Delete a secret (System)

**DELETE** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`

Deletes a single secret from a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Secret deleted

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete secret failure

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



## Duplicate secret (System)

**POST** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}/duplicate`

Duplicates a secret in a store managed by the calling service, keeping the value.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


### Responses

#### 200 Secret detail

> Data is at `body["result"]`

```json
null
```

#### 4XX Duplicate secret failure

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


