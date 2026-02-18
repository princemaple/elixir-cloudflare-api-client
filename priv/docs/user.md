# User

## Edit User

**PATCH** `/user`

Edit part of your user details.

### Responses

#### 200 Edit User response

> Data is at `body["result"]`

```json
{
  "betas": [
    "*string*"
  ],
  "country": "*string*",
  "first_name": "*string*",
  "has_business_zones": "*boolean*",
  "has_enterprise_zones": "*boolean*",
  "has_pro_zones": "*boolean*",
  "id": "*string*",
  "last_name": "*string*",
  "organizations": [
    {
      "id": "*string*",
      "name": "*string*",
      "permissions": [
        null
      ],
      "roles": [
        "*string*"
      ],
      "status": "*string*"
    }
  ],
  "suspended": "*boolean*",
  "telephone": "*string*",
  "two_factor_authentication_enabled": "*boolean*",
  "two_factor_authentication_locked": "*boolean*",
  "zipcode": "*string*"
}
```

#### 4XX Edit User response failure

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



## User Details

**GET** `/user`



### Responses

#### 200 User Details response

> Data is at `body["result"]`

```json
{
  "betas": [
    "*string*"
  ],
  "country": "*string*",
  "first_name": "*string*",
  "has_business_zones": "*boolean*",
  "has_enterprise_zones": "*boolean*",
  "has_pro_zones": "*boolean*",
  "id": "*string*",
  "last_name": "*string*",
  "organizations": [
    {
      "id": "*string*",
      "name": "*string*",
      "permissions": [
        null
      ],
      "roles": [
        "*string*"
      ],
      "status": "*string*"
    }
  ],
  "suspended": "*boolean*",
  "telephone": "*string*",
  "two_factor_authentication_enabled": "*boolean*",
  "two_factor_authentication_locked": "*boolean*",
  "zipcode": "*string*"
}
```

#### 4XX User Details response failure

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



## List user tenants

**GET** `/users/tenants`

Retrieves list of tenants the authenticated user / method has access to.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "create_time": "*string*",
    "id": "*string*",
    "meta": {
      "flags": null,
      "managed_by": "*string*"
    },
    "name": "*string*",
    "parent": {
      "id": "*string*",
      "name": "*string*"
    },
    "profile": {
      "business_address": "*string*",
      "business_email": "*string*",
      "business_name": "*string*",
      "business_phone": "*string*",
      "external_metadata": "*string*"
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


