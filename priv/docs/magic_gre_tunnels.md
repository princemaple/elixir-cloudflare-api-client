# Magic GRE tunnels

## Update multiple GRE tunnels

**PUT** `/accounts/{account_id}/magic/gre_tunnels`

Updates multiple GRE tunnels. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Update multiple GRE tunnels response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update multiple GRE tunnels response failure

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



## Create a GRE tunnel

**POST** `/accounts/{account_id}/magic/gre_tunnels`

Creates a new GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Create GRE tunnels response

> Data is at `body["result"]`

```json
{
  "automatic_return_routing": "*boolean*",
  "bgp": {
    "customer_asn": "*integer*",
    "extra_prefixes": [
      "*string*"
    ],
    "md5_key": "*string*"
  },
  "bgp_status": {
    "bgp_state": "*string*",
    "cf_speaker_ip": "*string*",
    "cf_speaker_port": "*integer*",
    "customer_speaker_ip": "*string*",
    "customer_speaker_port": "*integer*",
    "state": "*string*",
    "tcp_established": "*boolean*",
    "updated_at": "*string*"
  },
  "cloudflare_gre_endpoint": "*string*",
  "created_on": "*string*",
  "customer_gre_endpoint": "*string*",
  "description": "*string*",
  "health_check": {
    "direction": "*string*",
    "enabled": "*boolean*",
    "rate": "*string*",
    "target": null,
    "type": "*string*"
  },
  "id": "*string*",
  "interface_address": "*string*",
  "interface_address6": "*string*",
  "modified_on": "*string*",
  "mtu": "*integer*",
  "name": "*string*",
  "ttl": "*integer*"
}
```

#### 4XX Create GRE tunnels response failure

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



## List GRE tunnels

**GET** `/accounts/{account_id}/magic/gre_tunnels`

Lists GRE tunnels associated with an account.

### Responses

#### 200 List GRE tunnels response

> Data is at `body["result"]`

```json
null
```

#### 4XX List GRE tunnels response failure

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



## Update GRE Tunnel

**PUT** `/accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`

Updates a specific GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Update GRE Tunnel response

> Data is at `body["result"]`

```json
{
  "modified": "*boolean*",
  "modified_gre_tunnel": {
    "automatic_return_routing": "*boolean*",
    "bgp": {
      "customer_asn": "*integer*",
      "extra_prefixes": [
        null
      ],
      "md5_key": "*string*"
    },
    "bgp_status": {
      "bgp_state": "*string*",
      "cf_speaker_ip": "*string*",
      "cf_speaker_port": "*integer*",
      "customer_speaker_ip": "*string*",
      "customer_speaker_port": "*integer*",
      "state": "*string*",
      "tcp_established": "*boolean*",
      "updated_at": "*string*"
    },
    "cloudflare_gre_endpoint": "*string*",
    "created_on": "*string*",
    "customer_gre_endpoint": "*string*",
    "description": "*string*",
    "health_check": null,
    "id": "*string*",
    "interface_address": "*string*",
    "interface_address6": "*string*",
    "modified_on": "*string*",
    "mtu": "*integer*",
    "name": "*string*",
    "ttl": "*integer*"
  }
}
```

#### 4XX Update GRE Tunnel response failure

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



## List GRE Tunnel Details

**GET** `/accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`

Lists informtion for a specific GRE tunnel.

### Responses

#### 200 List GRE Tunnel Details response

> Data is at `body["result"]`

```json
{
  "gre_tunnel": {
    "automatic_return_routing": "*boolean*",
    "bgp": {
      "customer_asn": "*integer*",
      "extra_prefixes": [
        null
      ],
      "md5_key": "*string*"
    },
    "bgp_status": {
      "bgp_state": "*string*",
      "cf_speaker_ip": "*string*",
      "cf_speaker_port": "*integer*",
      "customer_speaker_ip": "*string*",
      "customer_speaker_port": "*integer*",
      "state": "*string*",
      "tcp_established": "*boolean*",
      "updated_at": "*string*"
    },
    "cloudflare_gre_endpoint": "*string*",
    "created_on": "*string*",
    "customer_gre_endpoint": "*string*",
    "description": "*string*",
    "health_check": null,
    "id": "*string*",
    "interface_address": "*string*",
    "interface_address6": "*string*",
    "modified_on": "*string*",
    "mtu": "*integer*",
    "name": "*string*",
    "ttl": "*integer*"
  }
}
```

#### 4XX List GRE Tunnel Details response failure

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



## Delete GRE Tunnel

**DELETE** `/accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`

Disables and removes a specific static GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Delete GRE Tunnel response

> Data is at `body["result"]`

```json
{
  "deleted": "*boolean*",
  "deleted_gre_tunnel": {
    "automatic_return_routing": "*boolean*",
    "bgp": {
      "customer_asn": "*integer*",
      "extra_prefixes": [
        null
      ],
      "md5_key": "*string*"
    },
    "bgp_status": {
      "bgp_state": "*string*",
      "cf_speaker_ip": "*string*",
      "cf_speaker_port": "*integer*",
      "customer_speaker_ip": "*string*",
      "customer_speaker_port": "*integer*",
      "state": "*string*",
      "tcp_established": "*boolean*",
      "updated_at": "*string*"
    },
    "cloudflare_gre_endpoint": "*string*",
    "created_on": "*string*",
    "customer_gre_endpoint": "*string*",
    "description": "*string*",
    "health_check": null,
    "id": "*string*",
    "interface_address": "*string*",
    "interface_address6": "*string*",
    "modified_on": "*string*",
    "mtu": "*integer*",
    "name": "*string*",
    "ttl": "*integer*"
  }
}
```

#### 4XX Delete GRE Tunnel response failure

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


