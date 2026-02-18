# Tunnel Virtual Network

## Create a virtual network

**POST** `/accounts/{account_id}/teamnet/virtual_networks`

Adds a new virtual network to an account.

### Responses

#### 200 Create a virtual network response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "is_default_network": "*boolean*",
  "name": "*string*"
}
```

#### 4XX Create a virtual network response failure

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



## List virtual networks

**GET** `/accounts/{account_id}/teamnet/virtual_networks`

Lists and filters virtual networks in an account.

### Responses

#### 200 List virtual networks response

> Data is at `body["result"]`

```json
[
  {
    "comment": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "id": "*string*",
    "is_default_network": "*boolean*",
    "name": "*string*"
  }
]
```

#### 4XX List virtual networks response failure

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



## Update a virtual network

**PATCH** `/accounts/{account_id}/teamnet/virtual_networks/{virtual_network_id}`

Updates an existing virtual network.

### Responses

#### 200 Update a virtual network response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "is_default_network": "*boolean*",
  "name": "*string*"
}
```

#### 4XX Update a virtual network response failure

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



## Get a virtual network

**GET** `/accounts/{account_id}/teamnet/virtual_networks/{virtual_network_id}`

Get a virtual network.

### Responses

#### 200 A virtual network response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "is_default_network": "*boolean*",
  "name": "*string*"
}
```

#### 4XX A virtual network response failure

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



## Delete a virtual network

**DELETE** `/accounts/{account_id}/teamnet/virtual_networks/{virtual_network_id}`

Deletes an existing virtual network.

### Responses

#### 200 Delete a virtual network response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "is_default_network": "*boolean*",
  "name": "*string*"
}
```

#### 4XX Delete a virtual network response failure

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


