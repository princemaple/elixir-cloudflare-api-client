# Magic IPsec tunnels

## Update multiple IPsec tunnels

**PUT** `/accounts/{account_id}/magic/ipsec_tunnels`

Update multiple IPsec tunnels associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Update multiple IPsec tunnels response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update multiple IPsec tunnels response failure

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



## Create an IPsec tunnel

**POST** `/accounts/{account_id}/magic/ipsec_tunnels`

Creates a new IPsec tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Create IPsec tunnels response

> Data is at `body["result"]`

```json
{
  "allow_null_cipher": "*boolean*",
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
  "cloudflare_endpoint": "*string*",
  "created_on": "*string*",
  "custom_remote_identities": {
    "fqdn_id": "*string*"
  },
  "customer_endpoint": "*string*",
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
  "name": "*string*",
  "psk_metadata": {
    "last_generated_on": "*string*"
  },
  "replay_protection": "*boolean*"
}
```

#### 4XX Create IPsec tunnels response failure

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



## List IPsec tunnels

**GET** `/accounts/{account_id}/magic/ipsec_tunnels`

Lists IPsec tunnels associated with an account.

### Responses

#### 200 List IPsec tunnels response

> Data is at `body["result"]`

```json
null
```

#### 4XX List IPsec tunnels response failure

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



## Update IPsec Tunnel

**PUT** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`

Updates a specific IPsec tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Update IPsec Tunnel response

> Data is at `body["result"]`

```json
{
  "modified": "*boolean*",
  "modified_ipsec_tunnel": {
    "allow_null_cipher": "*boolean*",
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
    "cloudflare_endpoint": "*string*",
    "created_on": "*string*",
    "custom_remote_identities": {
      "fqdn_id": "*string*"
    },
    "customer_endpoint": "*string*",
    "description": "*string*",
    "health_check": null,
    "id": "*string*",
    "interface_address": "*string*",
    "interface_address6": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "psk_metadata": {
      "last_generated_on": null
    },
    "replay_protection": "*boolean*"
  }
}
```

#### 4XX Update IPsec Tunnel response failure

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



## List IPsec tunnel details

**GET** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`

Lists details for a specific IPsec tunnel.

### Responses

#### 200 List IPsec tunnel details response

> Data is at `body["result"]`

```json
{
  "ipsec_tunnel": {
    "allow_null_cipher": "*boolean*",
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
    "cloudflare_endpoint": "*string*",
    "created_on": "*string*",
    "custom_remote_identities": {
      "fqdn_id": "*string*"
    },
    "customer_endpoint": "*string*",
    "description": "*string*",
    "health_check": null,
    "id": "*string*",
    "interface_address": "*string*",
    "interface_address6": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "psk_metadata": {
      "last_generated_on": null
    },
    "replay_protection": "*boolean*"
  }
}
```

#### 4XX List IPsec tunnel details response failure

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



## Delete IPsec Tunnel

**DELETE** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`

Disables and removes a specific static IPsec Tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Delete IPsec Tunnel response

> Data is at `body["result"]`

```json
{
  "deleted": "*boolean*",
  "deleted_ipsec_tunnel": {
    "allow_null_cipher": "*boolean*",
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
    "cloudflare_endpoint": "*string*",
    "created_on": "*string*",
    "custom_remote_identities": {
      "fqdn_id": "*string*"
    },
    "customer_endpoint": "*string*",
    "description": "*string*",
    "health_check": null,
    "id": "*string*",
    "interface_address": "*string*",
    "interface_address6": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "psk_metadata": {
      "last_generated_on": null
    },
    "replay_protection": "*boolean*"
  }
}
```

#### 4XX Delete IPsec Tunnel response failure

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



## Generate Pre Shared Key (PSK) for IPsec tunnels

**POST** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}/psk_generate`

Generates a Pre Shared Key for a specific IPsec tunnel used in the IKE session. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes. After a PSK is generated, the PSK is immediately persisted to Cloudflare's edge and cannot be retrieved later. Note the PSK in a safe place.

### Responses

#### 200 Generate Pre Shared Key (PSK) for IPsec tunnels response

> Data is at `body["result"]`

```json
null
```

#### 4XX Generate Pre Shared Key (PSK) for IPsec tunnels response failure

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


