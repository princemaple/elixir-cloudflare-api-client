# Magic Account Apps

## Create a new App

**POST** `/accounts/{account_id}/magic/apps`

Creates a new App for an account

### Responses

#### 201 Create Account App response

> Data is at `body["result"]`

```json
{
  "account_app_id": "*string*",
  "hostnames": [
    "*string*"
  ],
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Create Account App response failure

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



## List Apps

**GET** `/accounts/{account_id}/magic/apps`

Lists Apps associated with an account.

### Responses

#### 200 List Apps response

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX List Apps response failure

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



## Update an App

**PUT** `/accounts/{account_id}/magic/apps/{account_app_id}`

Updates an Account App

### Responses

#### 200 Update App response

> Data is at `body["result"]`

```json
{
  "account_app_id": "*string*",
  "hostnames": [
    "*string*"
  ],
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Update App response failure

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



## Update an App

**PATCH** `/accounts/{account_id}/magic/apps/{account_app_id}`

Updates an Account App

### Responses

#### 200 Update App response

> Data is at `body["result"]`

```json
{
  "account_app_id": "*string*",
  "hostnames": [
    "*string*"
  ],
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Update App response failure

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



## Delete Account App

**DELETE** `/accounts/{account_id}/magic/apps/{account_app_id}`

Deletes specific Account App.

### Responses

#### 200 Delete App response

> Data is at `body["result"]`

```json
{
  "account_app_id": "*string*",
  "hostnames": [
    "*string*"
  ],
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Delete App response failure

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


