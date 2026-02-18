# Zero Trust Hostname Route

## Create hostname route

**POST** `/accounts/{account_id}/zerotrust/routes/hostname`

Create a hostname route.

### Responses

#### 200 Create hostname route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "tunnel_id": "*string*",
  "tunnel_name": "*string*"
}
```

#### 4XX Create hostname route response failure

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



## List hostname routes

**GET** `/accounts/{account_id}/zerotrust/routes/hostname`

Lists and filters hostname routes in an account.

### Responses

#### 200 List hostname routes response

> Data is at `body["result"]`

```json
[
  {
    "comment": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "hostname": "*string*",
    "id": "*string*",
    "tunnel_id": "*string*",
    "tunnel_name": "*string*"
  }
]
```

#### 4XX List hostname routes failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update hostname route

**PATCH** `/accounts/{account_id}/zerotrust/routes/hostname/{hostname_route_id}`

Updates a hostname route.

### Responses

#### 200 Update hostname route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "tunnel_id": "*string*",
  "tunnel_name": "*string*"
}
```

#### 4XX Update hostname route response failure

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



## Get hostname route

**GET** `/accounts/{account_id}/zerotrust/routes/hostname/{hostname_route_id}`

Get a hostname route.

### Responses

#### 200 Get hostname route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "tunnel_id": "*string*",
  "tunnel_name": "*string*"
}
```

#### 4XX Get hostname route response failure

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



## Delete hostname route

**DELETE** `/accounts/{account_id}/zerotrust/routes/hostname/{hostname_route_id}`

Delete a hostname route.

### Responses

#### 200 Delete hostname route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "tunnel_id": "*string*",
  "tunnel_name": "*string*"
}
```

#### 4XX Delete hostname route response failure

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


