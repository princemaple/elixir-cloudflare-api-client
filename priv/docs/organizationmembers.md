# OrganizationMembers

## Create organization member

**POST** `/organizations/{organization_id}/members`

Create a membership that grants access to a specific Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "create_time": "*string*",
  "id": "*string*",
  "meta": {},
  "status": "*string*",
  "update_time": "*string*",
  "user": {
    "email": "*string*",
    "id": "*string*",
    "name": "*string*",
    "two_factor_authentication_enabled": "*boolean*"
  }
}
```

#### 4XX An unexpected error response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List organization members

**GET** `/organizations/{organization_id}/members`

List memberships for an Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "create_time": "*string*",
    "id": "*string*",
    "meta": {},
    "status": "*string*",
    "update_time": "*string*",
    "user": {
      "email": "*string*",
      "id": "*string*",
      "name": "*string*",
      "two_factor_authentication_enabled": "*boolean*"
    }
  }
]
```

#### 4XX An unexpected error response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get organization member

**GET** `/organizations/{organization_id}/members/{member_id}`

Retrieve a single membership from an Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "create_time": "*string*",
  "id": "*string*",
  "meta": {},
  "status": "*string*",
  "update_time": "*string*",
  "user": {
    "email": "*string*",
    "id": "*string*",
    "name": "*string*",
    "two_factor_authentication_enabled": "*boolean*"
  }
}
```

#### 4XX An unexpected error response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete organization member

**DELETE** `/organizations/{organization_id}/members/{member_id}`

Delete a membership to a particular Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 204 There is no content to send for this request, but the headers may be useful.

> Data is at `body["result"]`

```json

```

#### 4XX An unexpected error response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Batch create organization members

**POST** `/organizations/{organization_id}/members:batchCreate`

Batch create multiple memberships that grant access to a specific Organization.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "create_time": "*string*",
    "id": "*string*",
    "meta": {},
    "status": "*string*",
    "update_time": "*string*",
    "user": {
      "email": "*string*",
      "id": "*string*",
      "name": "*string*",
      "two_factor_authentication_enabled": "*boolean*"
    }
  }
]
```

#### 4XX An unexpected error response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


