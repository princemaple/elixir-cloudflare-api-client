# Access groups

## Create an Access group

**POST** `/accounts/{account_id}/access/groups`

Creates a new Access group.

### Responses

#### 201 Create an Access group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "is_default": [
    {}
  ],
  "name": "*string*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Create an Access group response failure

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



## List Access groups

**GET** `/accounts/{account_id}/access/groups`

Lists all Access groups.

### Responses

#### 200 List Access groups response

> Data is at `body["result"]`

```json
[
  {
    "created_at": null,
    "exclude": [
      null
    ],
    "id": "*string*",
    "include": [
      null
    ],
    "is_default": [
      null
    ],
    "name": "*string*",
    "require": [
      null
    ],
    "updated_at": null
  }
]
```

#### 4XX List Access groups response failure

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



## Update an Access group

**PUT** `/accounts/{account_id}/access/groups/{group_id}`

Updates a configured Access group.

### Responses

#### 200 Update an Access group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "is_default": [
    {}
  ],
  "name": "*string*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Update an Access group response failure

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



## Get an Access group

**GET** `/accounts/{account_id}/access/groups/{group_id}`

Fetches a single Access group.

### Responses

#### 200 Get an Access group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "is_default": [
    {}
  ],
  "name": "*string*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Get an Access group response failure

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



## Delete an Access group

**DELETE** `/accounts/{account_id}/access/groups/{group_id}`

Deletes an Access group.

### Responses

#### 202 Delete an Access group response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an Access group response failure

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


