# Account Members

## Add Member

**POST** `/accounts/{account_id}/members`

Add a user to the list of members for this account.

### Responses

#### 200 Add Member response

> Data is at `body["result"]`

```json
{
  "email": "*string*",
  "id": "*string*",
  "policies": [
    null
  ],
  "roles": [
    {
      "description": "*string*",
      "id": "*string*",
      "name": "*string*",
      "permissions": null
    }
  ],
  "status": null,
  "user": {
    "email": "*string*",
    "first_name": "*string*",
    "id": "*string*",
    "last_name": "*string*",
    "two_factor_authentication_enabled": "*boolean*"
  }
}
```

#### 4XX Add Member response failure

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



## List Members

**GET** `/accounts/{account_id}/members`

List all members of an account.

### Responses

#### 200 List Members response

> Data is at `body["result"]`

```json
[
  {
    "email": "*string*",
    "id": "*string*",
    "policies": [
      null
    ],
    "roles": [
      {
        "description": null,
        "id": null,
        "name": null,
        "permissions": null
      }
    ],
    "status": null,
    "user": {
      "email": "*string*",
      "first_name": "*string*",
      "id": "*string*",
      "last_name": "*string*",
      "two_factor_authentication_enabled": "*boolean*"
    }
  }
]
```

#### 4XX List Members response failure

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



## Update Member

**PUT** `/accounts/{account_id}/members/{member_id}`

Modify an account member.

### Responses

#### 200 Update Member response

> Data is at `body["result"]`

```json
{
  "email": "*string*",
  "id": "*string*",
  "policies": [
    null
  ],
  "roles": [
    {
      "description": "*string*",
      "id": "*string*",
      "name": "*string*",
      "permissions": null
    }
  ],
  "status": null,
  "user": {
    "email": "*string*",
    "first_name": "*string*",
    "id": "*string*",
    "last_name": "*string*",
    "two_factor_authentication_enabled": "*boolean*"
  }
}
```

#### 4XX Update Member response failure

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



## Member Details

**GET** `/accounts/{account_id}/members/{member_id}`

Get information about a specific member of an account.

### Responses

#### 200 Member Details response

> Data is at `body["result"]`

```json
{
  "email": "*string*",
  "id": "*string*",
  "policies": [
    null
  ],
  "roles": [
    {
      "description": "*string*",
      "id": "*string*",
      "name": "*string*",
      "permissions": null
    }
  ],
  "status": null,
  "user": {
    "email": "*string*",
    "first_name": "*string*",
    "id": "*string*",
    "last_name": "*string*",
    "two_factor_authentication_enabled": "*boolean*"
  }
}
```

#### 4XX Member Details response failure

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



## Remove Member

**DELETE** `/accounts/{account_id}/members/{member_id}`

Remove a member from an account.

### Responses

#### 200 Remove Member response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Remove Member response failure

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


