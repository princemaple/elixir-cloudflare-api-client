# Access reusable policies

## Create an Access reusable policy

**POST** `/accounts/{account_id}/access/policies`

Creates a new Access reusable policy.

### Responses

#### 201 Create an Access reusable policy response.

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "name": "*string*",
  "require": [
    {}
  ],
  "reusable": "*boolean*",
  "updated_at": "*string*"
}
```

#### 4XX Create an Access reusable policy response failure.

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



## List Access reusable policies

**GET** `/accounts/{account_id}/access/policies`

Lists Access reusable policies.

### Responses

#### 200 List Access reusable policies response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Access reusable policies response failure.

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



## Update an Access reusable policy

**PUT** `/accounts/{account_id}/access/policies/{policy_id}`

Updates a Access reusable policy.

### Responses

#### 200 Update an Access reusable policy response.

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "name": "*string*",
  "require": [
    {}
  ],
  "reusable": "*boolean*",
  "updated_at": "*string*"
}
```

#### 4XX Update an Access reusable policy response failure.

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



## Get an Access reusable policy

**GET** `/accounts/{account_id}/access/policies/{policy_id}`

Fetches a single Access reusable policy.

### Responses

#### 200 Get an Access reusable policy response.

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "name": "*string*",
  "require": [
    {}
  ],
  "reusable": "*boolean*",
  "updated_at": "*string*"
}
```

#### 4XX Get an Access reusable policy response failure.

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



## Delete an Access reusable policy

**DELETE** `/accounts/{account_id}/access/policies/{policy_id}`

Deletes an Access reusable policy.

### Responses

#### 202 Delete an Access reusable policy response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an Access reusable policy response failure.

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


