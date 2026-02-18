# Magic Site LANs

## Create a new Site LAN

**POST** `/accounts/{account_id}/magic/sites/{site_id}/lans`

Creates a new Site LAN. If the site is in high availability mode, static_addressing is required along with secondary and virtual address.

### Responses

#### 200 Create Site LAN response

> Data is at `body["result"]`

```json
[
  {
    "bond_id": "*integer*",
    "ha_link": "*boolean*",
    "id": "*string*",
    "name": "*string*",
    "nat": {
      "static_prefix": null
    },
    "physport": "*integer*",
    "routed_subnets": [
      {
        "nat": null,
        "next_hop": null,
        "prefix": null
      }
    ],
    "site_id": "*string*",
    "static_addressing": {
      "address": null,
      "dhcp_relay": null,
      "dhcp_server": null,
      "secondary_address": null,
      "virtual_address": null
    },
    "vlan_tag": "*integer*"
  }
]
```

#### 4XX Create Site LAN response failure

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



## List Site LANs

**GET** `/accounts/{account_id}/magic/sites/{site_id}/lans`

Lists Site LANs associated with an account.

### Responses

#### 200 List Site LANs response

> Data is at `body["result"]`

```json
[
  {
    "bond_id": "*integer*",
    "ha_link": "*boolean*",
    "id": "*string*",
    "name": "*string*",
    "nat": {
      "static_prefix": null
    },
    "physport": "*integer*",
    "routed_subnets": [
      {
        "nat": null,
        "next_hop": null,
        "prefix": null
      }
    ],
    "site_id": "*string*",
    "static_addressing": {
      "address": null,
      "dhcp_relay": null,
      "dhcp_server": null,
      "secondary_address": null,
      "virtual_address": null
    },
    "vlan_tag": "*integer*"
  }
]
```

#### 4XX List Site LANs response failure

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



## Update Site LAN

**PUT** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Update a specific Site LAN.

### Responses

#### 200 Update Site LAN response

> Data is at `body["result"]`

```json
{
  "bond_id": "*integer*",
  "ha_link": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "nat": {
    "static_prefix": "*string*"
  },
  "physport": "*integer*",
  "routed_subnets": [
    {
      "nat": {
        "static_prefix": null
      },
      "next_hop": "*string*",
      "prefix": "*string*"
    }
  ],
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "dhcp_relay": {
      "server_addresses": [
        null
      ]
    },
    "dhcp_server": {
      "dhcp_pool_end": null,
      "dhcp_pool_start": null,
      "dns_server": null,
      "dns_servers": [
        null
      ],
      "reservations": {}
    },
    "secondary_address": "*string*",
    "virtual_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Update Site LAN response failure

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



## Patch Site LAN

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Patch a specific Site LAN.

### Responses

#### 200 Patch Site LAN response

> Data is at `body["result"]`

```json
{
  "bond_id": "*integer*",
  "ha_link": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "nat": {
    "static_prefix": "*string*"
  },
  "physport": "*integer*",
  "routed_subnets": [
    {
      "nat": {
        "static_prefix": null
      },
      "next_hop": "*string*",
      "prefix": "*string*"
    }
  ],
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "dhcp_relay": {
      "server_addresses": [
        null
      ]
    },
    "dhcp_server": {
      "dhcp_pool_end": null,
      "dhcp_pool_start": null,
      "dns_server": null,
      "dns_servers": [
        null
      ],
      "reservations": {}
    },
    "secondary_address": "*string*",
    "virtual_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Patch Site LAN response failure

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



## Site LAN Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Get a specific Site LAN.

### Responses

#### 200 Site LAN Details response

> Data is at `body["result"]`

```json
{
  "bond_id": "*integer*",
  "ha_link": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "nat": {
    "static_prefix": "*string*"
  },
  "physport": "*integer*",
  "routed_subnets": [
    {
      "nat": {
        "static_prefix": null
      },
      "next_hop": "*string*",
      "prefix": "*string*"
    }
  ],
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "dhcp_relay": {
      "server_addresses": [
        null
      ]
    },
    "dhcp_server": {
      "dhcp_pool_end": null,
      "dhcp_pool_start": null,
      "dns_server": null,
      "dns_servers": [
        null
      ],
      "reservations": {}
    },
    "secondary_address": "*string*",
    "virtual_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Site LAN Details response failure

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



## Delete Site LAN

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Remove a specific Site LAN.

### Responses

#### 200 Delete Site LAN response

> Data is at `body["result"]`

```json
{
  "bond_id": "*integer*",
  "ha_link": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "nat": {
    "static_prefix": "*string*"
  },
  "physport": "*integer*",
  "routed_subnets": [
    {
      "nat": {
        "static_prefix": null
      },
      "next_hop": "*string*",
      "prefix": "*string*"
    }
  ],
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "dhcp_relay": {
      "server_addresses": [
        null
      ]
    },
    "dhcp_server": {
      "dhcp_pool_end": null,
      "dhcp_pool_start": null,
      "dns_server": null,
      "dns_servers": [
        null
      ],
      "reservations": {}
    },
    "secondary_address": "*string*",
    "virtual_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Delete Site LAN response failure

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


