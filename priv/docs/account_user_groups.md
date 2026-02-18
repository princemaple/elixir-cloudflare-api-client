# Account User Groups

## Create User Group

**POST** `/accounts/{account_id}/iam/user_groups`

Create a new user group under the specified account.

### Responses

#### 200 Add User Group response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "policies": [
    null
  ]
}
```

#### 4XX Add User Group response failure

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



## List User Groups

**GET** `/accounts/{account_id}/iam/user_groups`

List all the user groups for an account.

### Responses

#### 200 List User Group response

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "id": null,
    "modified_on": "*string*",
    "name": "*string*",
    "policies": [
      null
    ]
  }
]
```

#### 4XX List User Group response failure

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



## Update User Group

**PUT** `/accounts/{account_id}/iam/user_groups/{user_group_id}`

Modify an existing user group.

### Responses

#### 200 Update User Group response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "policies": [
    null
  ]
}
```

#### 4XX Update User Group response failure

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



## User Group Details

**GET** `/accounts/{account_id}/iam/user_groups/{user_group_id}`

Get information about a specific user group in an account.

### Responses

#### 200 User Group Details response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "policies": [
    null
  ]
}
```

#### 4XX User Group Details response failure

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



## Remove User Group

**DELETE** `/accounts/{account_id}/iam/user_groups/{user_group_id}`

Remove a user group from an account.

### Responses

#### 200 Remove User Group response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Remove User Group response failure

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



## Update User Group Members

**PUT** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members`

Replace the set of members attached to a User Group.

### Responses

#### 200 Update User Group Members response

> Data is at `body["result"]`

```json
[
  {
    "email": "*string*",
    "id": "*string*",
    "status": null
  }
]
```

#### 4XX Update User Group response failure

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



## Add User Group Members

**POST** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members`

Add members to a User Group.

### Responses

#### 200 Add User Group Member response

> Data is at `body["result"]`

```json
{
  "email": "*string*",
  "id": "*string*",
  "status": null
}
```

#### 4XX Add User Group Member response failure

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



## List User Group Members

**GET** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members`

List all the members attached to a user group.

### Responses

#### 200 List User Group Members

> Data is at `body["result"]`

```json
[
  {
    "email": "*string*",
    "id": "*string*",
    "status": null
  }
]
```

#### 4XX User Group Details response failure

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



## Remove User Group Member

**DELETE** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members/{member_id}`

Remove a member from User Group

### Responses

#### 200 Delete User Group Member response

> Data is at `body["result"]`

```json
{
  "email": "*string*",
  "id": "*string*",
  "status": null
}
```

#### 4XX Delete User Group response failure

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


