# User's Organizations

## List Organizations

**GET** `/user/organizations`

Lists organizations the user is associated with.

### Responses

#### 200 List Organizations response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "name": "*string*",
    "permissions": [
      "*string*"
    ],
    "roles": [
      "*string*"
    ],
    "status": "*string*"
  }
]
```

#### 4XX List Organizations response failure

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



## Organization Details

**GET** `/user/organizations/{organization_id}`

Gets a specific organization the user is associated with.

### Responses

#### 200 Organization Details response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Organization Details response failure

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



## Leave Organization

**DELETE** `/user/organizations/{organization_id}`

Removes association to an organization.

### Responses

#### 200 Leave Organization response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Leave Organization response failure

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


