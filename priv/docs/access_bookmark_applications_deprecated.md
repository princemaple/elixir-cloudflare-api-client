# Access Bookmark applications (Deprecated)

## List Bookmark applications

**GET** `/accounts/{account_id}/access/bookmarks`

Lists Bookmark applications.

### Responses

#### 200 List Bookmark applications response

> Data is at `body["result"]`

```json
[
  {
    "app_launcher_visible": "*boolean*",
    "created_at": null,
    "domain": "*string*",
    "id": "*string*",
    "logo_url": "*string*",
    "name": "*string*",
    "updated_at": null
  }
]
```

#### 4XX List Bookmark applications response failure

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



## Update a Bookmark application

**PUT** `/accounts/{account_id}/access/bookmarks/{bookmark_id}`

Updates a configured Bookmark application.

### Responses

#### 200 Update a Bookmark application response

> Data is at `body["result"]`

```json
{
  "app_launcher_visible": "*boolean*",
  "created_at": "*string*",
  "domain": "*string*",
  "id": "*string*",
  "logo_url": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update a Bookmark application response failure

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



## Create a Bookmark application

**POST** `/accounts/{account_id}/access/bookmarks/{bookmark_id}`

Create a new Bookmark application.

### Responses

#### 200 Create a Bookmark application response

> Data is at `body["result"]`

```json
{
  "app_launcher_visible": "*boolean*",
  "created_at": "*string*",
  "domain": "*string*",
  "id": "*string*",
  "logo_url": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create a Bookmark application response failure

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



## Get a Bookmark application

**GET** `/accounts/{account_id}/access/bookmarks/{bookmark_id}`

Fetches a single Bookmark application.

### Responses

#### 200 Get a Bookmark application response

> Data is at `body["result"]`

```json
{
  "app_launcher_visible": "*boolean*",
  "created_at": "*string*",
  "domain": "*string*",
  "id": "*string*",
  "logo_url": "*string*",
  "name": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get a Bookmark application response failure

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



## Delete a Bookmark application

**DELETE** `/accounts/{account_id}/access/bookmarks/{bookmark_id}`

Deletes a Bookmark application.

### Responses

#### 200 Delete a Bookmark application response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a Bookmark application response failure

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


