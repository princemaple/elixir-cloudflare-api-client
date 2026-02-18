# Tunnel Routing

## Create a tunnel route

**POST** `/accounts/{account_id}/teamnet/routes`

Routes a private network through a Cloudflare Tunnel.

### Responses

#### 200 Create a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Create a tunnel route response failure

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



## List tunnel routes

**GET** `/accounts/{account_id}/teamnet/routes`

Lists and filters private network routes in an account.

### Responses

#### 200 List tunnel routes response

> Data is at `body["result"]`

```json
[
  {
    "comment": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "id": "*string*",
    "network": "*string*",
    "tun_type": "*string*",
    "tunnel_id": "*string*",
    "tunnel_name": "*string*",
    "virtual_network_id": "*string*",
    "virtual_network_name": "*string*"
  }
]
```

#### 4XX List tunnel routes response failure

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



## Get tunnel route by IP

**GET** `/accounts/{account_id}/teamnet/routes/ip/{ip}`

Fetches routes that contain the given IP address.

### Responses

#### 200 Get tunnel route by IP response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tun_type": "*string*",
  "tunnel_id": "*string*",
  "tunnel_name": "*string*",
  "virtual_network_id": "*string*",
  "virtual_network_name": "*string*"
}
```

#### 4XX Get tunnel route by IP response failure

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



## Create a tunnel route (CIDR Endpoint)

**POST** `/accounts/{account_id}/teamnet/routes/network/{ip_network_encoded}`

Routes a private network through a Cloudflare Tunnel. The CIDR in `ip_network_encoded` must be written in URL-encoded format.

### Responses

#### 200 Create a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Create a tunnel route response failure

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



## Update a tunnel route (CIDR Endpoint)

**PATCH** `/accounts/{account_id}/teamnet/routes/network/{ip_network_encoded}`

Updates an existing private network route in an account. The CIDR in `ip_network_encoded` must be written in URL-encoded format.

### Responses

#### 200 Update a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Update a tunnel route response failure

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



## Delete a tunnel route (CIDR Endpoint)

**DELETE** `/accounts/{account_id}/teamnet/routes/network/{ip_network_encoded}`

Deletes a private network route from an account. The CIDR in `ip_network_encoded` must be written in URL-encoded format. If no virtual_network_id is provided it will delete the route from the default vnet. If no tun_type is provided it will fetch the type from the tunnel_id or if that is missing it will assume Cloudflare Tunnel as default. If tunnel_id is provided it will delete the route from that tunnel, otherwise it will delete the route based on the vnet and tun_type.


### Responses

#### 200 Delete a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Delete a tunnel route response failure

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



## Update a tunnel route

**PATCH** `/accounts/{account_id}/teamnet/routes/{route_id}`

Updates an existing private network route in an account. The fields that are meant to be updated should be provided in the body of the request.

### Responses

#### 200 Update a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Update a tunnel route response failure

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



## Get tunnel route

**GET** `/accounts/{account_id}/teamnet/routes/{route_id}`

Get a private network route in an account.

### Responses

#### 200 Get a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Get a tunnel route response failure

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



## Delete a tunnel route

**DELETE** `/accounts/{account_id}/teamnet/routes/{route_id}`

Deletes a private network route from an account.


### Responses

#### 200 Delete a tunnel route response

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "network": "*string*",
  "tunnel_id": "*string*",
  "virtual_network_id": "*string*"
}
```

#### 4XX Delete a tunnel route response failure

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


