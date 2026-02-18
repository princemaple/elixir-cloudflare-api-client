# Cloudflare Tunnel

## Create a Cloudflare Tunnel

**POST** `/accounts/{account_id}/cfd_tunnel`

Creates a new Cloudflare Tunnel in an account.

### Responses

#### 200 Create a Cloudflare Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "config_src": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "remote_config": "*boolean*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Create a Cloudflare Tunnel response failure

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



## List Cloudflare Tunnels

**GET** `/accounts/{account_id}/cfd_tunnel`

Lists and filters Cloudflare Tunnels in an account.

### Responses

#### 200 List Cloudflare Tunnels response

> Data is at `body["result"]`

```json
[
  {
    "account_tag": "*string*",
    "config_src": "*string*",
    "connections": [
      null
    ],
    "conns_active_at": "*string*",
    "conns_inactive_at": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "id": "*string*",
    "metadata": {},
    "name": "*string*",
    "remote_config": "*boolean*",
    "status": "*string*",
    "tun_type": "*string*"
  }
]
```

#### 4XX List Cloudflare Tunnels response failure

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



## Update a Cloudflare Tunnel

**PATCH** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}`

Updates an existing Cloudflare Tunnel.

### Responses

#### 200 Update a Cloudflare Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "config_src": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "remote_config": "*boolean*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Update a Cloudflare Tunnel response failure

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



## Get a Cloudflare Tunnel

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}`

Fetches a single Cloudflare Tunnel.

### Responses

#### 200 Get a Cloudflare Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "config_src": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "remote_config": "*boolean*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Get a Cloudflare Tunnel response failure

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



## Delete a Cloudflare Tunnel

**DELETE** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}`

Deletes a Cloudflare Tunnel from an account.

### Responses

#### 200 Delete a Cloudflare Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "config_src": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "remote_config": "*boolean*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Delete a Cloudflare Tunnel response failure

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



## List Cloudflare Tunnel connections

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`

Fetches connection details for a Cloudflare Tunnel.

### Responses

#### 200 List Cloudflare Tunnel connections response

> Data is at `body["result"]`

```json
[
  {
    "arch": "*string*",
    "config_version": "*integer*",
    "conns": [
      null
    ],
    "features": [
      "*string*"
    ],
    "id": "*string*",
    "run_at": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX List Cloudflare Tunnel connections response failure

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



## Clean up Cloudflare Tunnel connections

**DELETE** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`

Removes a connection (aka Cloudflare Tunnel Connector) from a Cloudflare Tunnel independently of its current state. If no connector id (client_id) is provided all connectors will be removed. We recommend running this command after rotating tokens.

### Responses

#### 200 Clean up Cloudflare Tunnel connections response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Clean up Cloudflare Tunnel connections response failure

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



## Get Cloudflare Tunnel connector

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/connectors/{connector_id}`

Fetches connector and connection details for a Cloudflare Tunnel.

### Responses

#### 200 Get Cloudflare Tunnel connector response

> Data is at `body["result"]`

```json
{
  "arch": "*string*",
  "config_version": "*integer*",
  "conns": [
    null
  ],
  "features": [
    "*string*"
  ],
  "id": "*string*",
  "run_at": "*string*",
  "version": "*string*"
}
```

#### 4XX Get Cloudflare Tunnel connector response failure

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



## Get a Cloudflare Tunnel management token

**POST** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/management`

Gets a management token used to access the management resources (i.e. Streaming Logs) of a tunnel.

### Responses

#### 200 Get a Cloudflare Tunnel management token response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Cloudflare API response failure

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



## Get a Cloudflare Tunnel token

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/token`

Gets the token used to associate cloudflared with a specific tunnel.

### Responses

#### 200 Get a Cloudflare Tunnel token response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Get a Cloudflare Tunnel token response failure

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



## List All Tunnels

**GET** `/accounts/{account_id}/tunnels`

Lists and filters all types of Tunnels in an account.

### Responses

#### 200 List Tunnels response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Tunnels response failure

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



## Create a Warp Connector Tunnel

**POST** `/accounts/{account_id}/warp_connector`

Creates a new Warp Connector Tunnel in an account.

### Responses

#### 200 Create a Warp Connector Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Create a Warp Connector Tunnel response failure

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



## List Warp Connector Tunnels

**GET** `/accounts/{account_id}/warp_connector`

Lists and filters Warp Connector Tunnels in an account.

### Responses

#### 200 List Warp Connector Tunnels response

> Data is at `body["result"]`

```json
[
  {
    "account_tag": "*string*",
    "connections": [
      null
    ],
    "conns_active_at": "*string*",
    "conns_inactive_at": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "id": "*string*",
    "metadata": {},
    "name": "*string*",
    "status": "*string*",
    "tun_type": "*string*"
  }
]
```

#### 4XX List Warp Connector Tunnels response failure

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



## Update a Warp Connector Tunnel

**PATCH** `/accounts/{account_id}/warp_connector/{tunnel_id}`

Updates an existing Warp Connector Tunnel.

### Responses

#### 200 Update a Warp Connector Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Update a Warp Connector Tunnel response failure

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



## Get a Warp Connector Tunnel

**GET** `/accounts/{account_id}/warp_connector/{tunnel_id}`

Fetches a single Warp Connector Tunnel.

### Responses

#### 200 Get a Warp Connector Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Get a Warp Connector Tunnel response failure

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



## Delete a Warp Connector Tunnel

**DELETE** `/accounts/{account_id}/warp_connector/{tunnel_id}`

Deletes a Warp Connector Tunnel from an account.

### Responses

#### 200 Delete a Warp Connector Tunnel response

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "connections": [
    null
  ],
  "conns_active_at": "*string*",
  "conns_inactive_at": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "id": "*string*",
  "metadata": {},
  "name": "*string*",
  "status": "*string*",
  "tun_type": "*string*"
}
```

#### 4XX Delete a Warp Connector Tunnel response failure

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



## Get a Warp Connector Tunnel token

**GET** `/accounts/{account_id}/warp_connector/{tunnel_id}/token`

Gets the token used to associate warp device with a specific Warp Connector tunnel.

### Responses

#### 200 Get a Warp Connector Tunnel token response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Get a Warp Connector Tunnel token response failure

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


