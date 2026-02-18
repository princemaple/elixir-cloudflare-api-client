# Access custom pages

## Create a custom page

**POST** `/accounts/{account_id}/access/custom_pages`

Create a custom page

### Responses

#### 201 Create a custom page response

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "name": "*string*",
  "type": "*string*",
  "uid": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create a custom page response failure

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



## List custom pages

**GET** `/accounts/{account_id}/access/custom_pages`

List custom pages

### Responses

#### 200 List custom pages response

> Data is at `body["result"]`

```json
[
  {
    "app_count": "*integer*",
    "created_at": null,
    "name": "*string*",
    "type": "*string*",
    "uid": "*string*",
    "updated_at": null
  }
]
```

#### 4XX List custom pages response failure

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



## Update a custom page

**PUT** `/accounts/{account_id}/access/custom_pages/{custom_page_id}`

Update a custom page

### Responses

#### 200 Update a custom page response

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "name": "*string*",
  "type": "*string*",
  "uid": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update a custom page response failure

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



## Get a custom page

**GET** `/accounts/{account_id}/access/custom_pages/{custom_page_id}`

Fetches a custom page and also returns its HTML.

### Responses

#### 200 Get a custom page response

> Data is at `body["result"]`

```json
{
  "app_count": "*integer*",
  "created_at": "*string*",
  "custom_html": "*string*",
  "name": "*string*",
  "type": "*string*",
  "uid": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get a custom page response failure

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



## Delete a custom page

**DELETE** `/accounts/{account_id}/access/custom_pages/{custom_page_id}`

Delete a custom page

### Responses

#### 202 Delete a custom page response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a custom page response failure

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


