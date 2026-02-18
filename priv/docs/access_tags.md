# Access tags

## Create a tag

**POST** `/accounts/{account_id}/access/tags`

Create a tag

### Responses

#### 201 Create a tag response

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create a tag response failure

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



## List tags

**GET** `/accounts/{account_id}/access/tags`

List tags

### Responses

#### 200 List tags response

> Data is at `body["result"]`

```json
[
  {
    "app_count": "*integer*",
    "created_at": null,
    "name": "*string*",
    "updated_at": null
  }
]
```

#### 4XX List tags response failure

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



## Update a tag

**PUT** `/accounts/{account_id}/access/tags/{tag_name}`

Update a tag

### Responses

#### 200 Update a tag response

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update a tag response failure

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



## Get a tag

**GET** `/accounts/{account_id}/access/tags/{tag_name}`

Get a tag

### Responses

#### 200 Get a tag response

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get a tag response failure

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



## Delete a tag

**DELETE** `/accounts/{account_id}/access/tags/{tag_name}`

Delete a tag

### Responses

#### 202 Delete a tag response

> Data is at `body["result"]`

```json
{
  "name": "*string*"
}
```

#### 4XX Delete a tag response failure

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


