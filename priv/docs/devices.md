# Devices

## List devices (deprecated)

**GET** `/accounts/{account_id}/devices`

List WARP devices. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled for the account.

**Deprecated**: please use one of the following endpoints instead:
- GET /accounts/{account_id}/devices/physical-devices
- GET /accounts/{account_id}/devices/registrations


### Responses

#### 200 List devices response.

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "deleted": "*boolean*",
    "device_type": "*string*",
    "id": "*string*",
    "ip": "*string*",
    "key": "*string*",
    "last_seen": "*string*",
    "mac_address": "*string*",
    "manufacturer": "*string*",
    "model": "*string*",
    "name": "*string*",
    "os_distro_name": "*string*",
    "os_distro_revision": "*string*",
    "os_version": "*string*",
    "os_version_extra": "*string*",
    "revoked_at": "*string*",
    "serial_number": "*string*",
    "updated": "*string*",
    "user": {
      "email": null,
      "id": null,
      "name": "*string*"
    },
    "version": "*string*"
  }
]
```

#### 4XX List devices response failure.

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



## List device settings profiles

**GET** `/accounts/{account_id}/devices/policies`

Fetches a list of the device settings profiles for an account.

### Responses

#### 200 List device settings profiles response.

> Data is at `body["result"]`

```json
[
  {
    "allow_mode_switch": "*boolean*",
    "allow_updates": "*boolean*",
    "allowed_to_leave": "*boolean*",
    "auto_connect": "*number*",
    "captive_portal": "*number*",
    "default": "*boolean*",
    "description": "*string*",
    "disable_auto_fallback": "*boolean*",
    "enabled": "*boolean*",
    "exclude": [
      null
    ],
    "exclude_office_ips": "*boolean*",
    "fallback_domains": [
      null
    ],
    "gateway_unique_id": "*string*",
    "include": [
      null
    ],
    "lan_allow_minutes": "*number*",
    "lan_allow_subnet_size": "*number*",
    "match": "*string*",
    "name": "*string*",
    "policy_id": "*string*",
    "precedence": "*number*",
    "register_interface_ip_with_dns": "*boolean*",
    "sccm_vpn_boundary_support": "*boolean*",
    "service_mode_v2": {
      "mode": "*string*",
      "port": "*number*"
    },
    "support_url": "*string*",
    "switch_locked": "*boolean*",
    "target_tests": [
      {
        "id": null,
        "name": null
      }
    ],
    "tunnel_protocol": "*string*"
  }
]
```

#### 4XX List device settings profiles response failure.

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



## Create a device settings profile

**POST** `/accounts/{account_id}/devices/policy`

Creates a device settings profile to be applied to certain devices matching the criteria.

### Responses

#### 200 Create a device settings profile response.

> Data is at `body["result"]`

```json
{
  "allow_mode_switch": "*boolean*",
  "allow_updates": "*boolean*",
  "allowed_to_leave": "*boolean*",
  "auto_connect": "*number*",
  "captive_portal": "*number*",
  "default": "*boolean*",
  "description": "*string*",
  "disable_auto_fallback": "*boolean*",
  "enabled": "*boolean*",
  "exclude": [
    {}
  ],
  "exclude_office_ips": "*boolean*",
  "fallback_domains": [
    {
      "description": "*string*",
      "dns_server": [
        null
      ],
      "suffix": "*string*"
    }
  ],
  "gateway_unique_id": "*string*",
  "include": [
    {}
  ],
  "lan_allow_minutes": "*number*",
  "lan_allow_subnet_size": "*number*",
  "match": "*string*",
  "name": "*string*",
  "policy_id": "*string*",
  "precedence": "*number*",
  "register_interface_ip_with_dns": "*boolean*",
  "sccm_vpn_boundary_support": "*boolean*",
  "service_mode_v2": {
    "mode": "*string*",
    "port": "*number*"
  },
  "support_url": "*string*",
  "switch_locked": "*boolean*",
  "target_tests": [
    {
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "tunnel_protocol": "*string*"
}
```

#### 4XX Create a device settings profile response failure.

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



## Update the default device settings profile

**PATCH** `/accounts/{account_id}/devices/policy`

Updates the default device settings profile for an account.

### Responses

#### 200 Update the default device settings profile response.

> Data is at `body["result"]`

```json
{
  "allow_mode_switch": "*boolean*",
  "allow_updates": "*boolean*",
  "allowed_to_leave": "*boolean*",
  "auto_connect": "*number*",
  "captive_portal": "*number*",
  "default": "*boolean*",
  "disable_auto_fallback": "*boolean*",
  "enabled": "*boolean*",
  "exclude": [
    {}
  ],
  "exclude_office_ips": "*boolean*",
  "fallback_domains": [
    {
      "description": "*string*",
      "dns_server": [
        null
      ],
      "suffix": "*string*"
    }
  ],
  "gateway_unique_id": "*string*",
  "include": [
    {}
  ],
  "register_interface_ip_with_dns": "*boolean*",
  "sccm_vpn_boundary_support": "*boolean*",
  "service_mode_v2": {
    "mode": "*string*",
    "port": "*number*"
  },
  "support_url": "*string*",
  "switch_locked": "*boolean*",
  "tunnel_protocol": "*string*"
}
```

#### 4XX Update the default device settings profile response failure.

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



## Get the default device settings profile

**GET** `/accounts/{account_id}/devices/policy`

Fetches the default device settings profile for an account.

### Responses

#### 200 Get the default device settings profile response.

> Data is at `body["result"]`

```json
{
  "allow_mode_switch": "*boolean*",
  "allow_updates": "*boolean*",
  "allowed_to_leave": "*boolean*",
  "auto_connect": "*number*",
  "captive_portal": "*number*",
  "default": "*boolean*",
  "disable_auto_fallback": "*boolean*",
  "enabled": "*boolean*",
  "exclude": [
    {}
  ],
  "exclude_office_ips": "*boolean*",
  "fallback_domains": [
    {
      "description": "*string*",
      "dns_server": [
        null
      ],
      "suffix": "*string*"
    }
  ],
  "gateway_unique_id": "*string*",
  "include": [
    {}
  ],
  "register_interface_ip_with_dns": "*boolean*",
  "sccm_vpn_boundary_support": "*boolean*",
  "service_mode_v2": {
    "mode": "*string*",
    "port": "*number*"
  },
  "support_url": "*string*",
  "switch_locked": "*boolean*",
  "tunnel_protocol": "*string*"
}
```

#### 4XX Get the default device settings profile response failure.

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



## Set the Split Tunnel exclude list

**PUT** `/accounts/{account_id}/devices/policy/exclude`

Sets the list of routes excluded from the WARP client's tunnel.

### Responses

#### 200 Set the Split Tunnel exclude list response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Set the Split Tunnel exclude list response failure.

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



## Get the Split Tunnel exclude list

**GET** `/accounts/{account_id}/devices/policy/exclude`

Fetches the list of routes excluded from the WARP client's tunnel.

### Responses

#### 200 Get the Split Tunnel exclude list response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Get the Split Tunnel exclude list response failure.

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



## Set your Local Domain Fallback list

**PUT** `/accounts/{account_id}/devices/policy/fallback_domains`

Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.

### Responses

#### 200 Set your Local Domain Fallback list response.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "dns_server": [
      "*string*"
    ],
    "suffix": "*string*"
  }
]
```

#### 4XX Set your Local Domain Fallback list response failure.

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



## Get your Local Domain Fallback list

**GET** `/accounts/{account_id}/devices/policy/fallback_domains`

Fetches a list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.

### Responses

#### 200 Get your Local Domain Fallback list response.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "dns_server": [
      "*string*"
    ],
    "suffix": "*string*"
  }
]
```

#### 4XX Get your Local Domain Fallback list response failure.

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



## Set the Split Tunnel include list

**PUT** `/accounts/{account_id}/devices/policy/include`

Sets the list of routes included in the WARP client's tunnel.

### Responses

#### 200 Set the Split Tunnel include list response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Set the Split Tunnel include list response failure.

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



## Get the Split Tunnel include list

**GET** `/accounts/{account_id}/devices/policy/include`

Fetches the list of routes included in the WARP client's tunnel.

### Responses

#### 200 Get the Split Tunnel include list response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Get the Split Tunnel include list response failure.

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



## Update a device settings profile

**PATCH** `/accounts/{account_id}/devices/policy/{policy_id}`

Updates a configured device settings profile.

### Responses

#### 200 Update a device settings profile Policy response.

> Data is at `body["result"]`

```json
{
  "allow_mode_switch": "*boolean*",
  "allow_updates": "*boolean*",
  "allowed_to_leave": "*boolean*",
  "auto_connect": "*number*",
  "captive_portal": "*number*",
  "default": "*boolean*",
  "description": "*string*",
  "disable_auto_fallback": "*boolean*",
  "enabled": "*boolean*",
  "exclude": [
    {}
  ],
  "exclude_office_ips": "*boolean*",
  "fallback_domains": [
    {
      "description": "*string*",
      "dns_server": [
        null
      ],
      "suffix": "*string*"
    }
  ],
  "gateway_unique_id": "*string*",
  "include": [
    {}
  ],
  "lan_allow_minutes": "*number*",
  "lan_allow_subnet_size": "*number*",
  "match": "*string*",
  "name": "*string*",
  "policy_id": "*string*",
  "precedence": "*number*",
  "register_interface_ip_with_dns": "*boolean*",
  "sccm_vpn_boundary_support": "*boolean*",
  "service_mode_v2": {
    "mode": "*string*",
    "port": "*number*"
  },
  "support_url": "*string*",
  "switch_locked": "*boolean*",
  "target_tests": [
    {
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "tunnel_protocol": "*string*"
}
```

#### 4XX Update a device settings profile Policy response failure.

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



## Get device settings profile by ID

**GET** `/accounts/{account_id}/devices/policy/{policy_id}`

Fetches a device settings profile by ID.

### Responses

#### 200 Get device settings profile by ID response.

> Data is at `body["result"]`

```json
{
  "allow_mode_switch": "*boolean*",
  "allow_updates": "*boolean*",
  "allowed_to_leave": "*boolean*",
  "auto_connect": "*number*",
  "captive_portal": "*number*",
  "default": "*boolean*",
  "description": "*string*",
  "disable_auto_fallback": "*boolean*",
  "enabled": "*boolean*",
  "exclude": [
    {}
  ],
  "exclude_office_ips": "*boolean*",
  "fallback_domains": [
    {
      "description": "*string*",
      "dns_server": [
        null
      ],
      "suffix": "*string*"
    }
  ],
  "gateway_unique_id": "*string*",
  "include": [
    {}
  ],
  "lan_allow_minutes": "*number*",
  "lan_allow_subnet_size": "*number*",
  "match": "*string*",
  "name": "*string*",
  "policy_id": "*string*",
  "precedence": "*number*",
  "register_interface_ip_with_dns": "*boolean*",
  "sccm_vpn_boundary_support": "*boolean*",
  "service_mode_v2": {
    "mode": "*string*",
    "port": "*number*"
  },
  "support_url": "*string*",
  "switch_locked": "*boolean*",
  "target_tests": [
    {
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "tunnel_protocol": "*string*"
}
```

#### 4XX Get device settings profile by ID response failure.

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



## Delete a device settings profile

**DELETE** `/accounts/{account_id}/devices/policy/{policy_id}`

Deletes a device settings profile and fetches a list of the remaining profiles for an account.

### Responses

#### 200 Delete a device settings profile response.

> Data is at `body["result"]`

```json
[
  {
    "allow_mode_switch": "*boolean*",
    "allow_updates": "*boolean*",
    "allowed_to_leave": "*boolean*",
    "auto_connect": "*number*",
    "captive_portal": "*number*",
    "default": "*boolean*",
    "description": "*string*",
    "disable_auto_fallback": "*boolean*",
    "enabled": "*boolean*",
    "exclude": [
      null
    ],
    "exclude_office_ips": "*boolean*",
    "fallback_domains": [
      null
    ],
    "gateway_unique_id": "*string*",
    "include": [
      null
    ],
    "lan_allow_minutes": "*number*",
    "lan_allow_subnet_size": "*number*",
    "match": "*string*",
    "name": "*string*",
    "policy_id": "*string*",
    "precedence": "*number*",
    "register_interface_ip_with_dns": "*boolean*",
    "sccm_vpn_boundary_support": "*boolean*",
    "service_mode_v2": {
      "mode": "*string*",
      "port": "*number*"
    },
    "support_url": "*string*",
    "switch_locked": "*boolean*",
    "target_tests": [
      {
        "id": null,
        "name": null
      }
    ],
    "tunnel_protocol": "*string*"
  }
]
```

#### 4XX Delete a device settings profile response failure.

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



## Set the Split Tunnel exclude list for a device settings profile

**PUT** `/accounts/{account_id}/devices/policy/{policy_id}/exclude`

Sets the list of routes excluded from the WARP client's tunnel for a specific device settings profile.

### Responses

#### 200 Set the Split Tunnel exclude list for a device settings profile response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Set the Split Tunnel exclude list for a device settings profile response failure.

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



## Get the Split Tunnel exclude list for a device settings profile

**GET** `/accounts/{account_id}/devices/policy/{policy_id}/exclude`

Fetches the list of routes excluded from the WARP client's tunnel for a specific device settings profile.

### Responses

#### 200 Get the Split Tunnel exclude list for a device settings profile response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Get the Split Tunnel exclude list for a device settings profile response failure.

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



## Set the Local Domain Fallback list for a device settings profile

**PUT** `/accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`

Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead. This will only apply to the specified device settings profile.

### Responses

#### 200 Set the Local Domain Fallback list for a device settings profile response.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "dns_server": [
      "*string*"
    ],
    "suffix": "*string*"
  }
]
```

#### 4XX Set the Local Domain Fallback list for a device settings profile response failure.

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



## Get the Local Domain Fallback list for a device settings profile

**GET** `/accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`

Fetches the list of domains to bypass Gateway DNS resolution from a specified device settings profile. These domains will use the specified local DNS resolver instead.

### Responses

#### 200 Get the Local Domain Fallback list for a device settings profile response.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "dns_server": [
      "*string*"
    ],
    "suffix": "*string*"
  }
]
```

#### 4XX Get the Local Domain Fallback list for a device settings profile response failure.

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



## Set the Split Tunnel include list for a device settings profile

**PUT** `/accounts/{account_id}/devices/policy/{policy_id}/include`

Sets the list of routes included in the WARP client's tunnel for a specific device settings profile.

### Responses

#### 200 Set the Split Tunnel include list for a device settings profile response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Set the Split Tunnel include list for a device settings profile response failure.

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



## Get the Split Tunnel include list for a device settings profile

**GET** `/accounts/{account_id}/devices/policy/{policy_id}/include`

Fetches the list of routes included in the WARP client's tunnel for a specific device settings profile.

### Responses

#### 200 Get the Split Tunnel include list for a device settings profile response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Get the Split Tunnel include list for a device settings profile response failure.

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



## Revoke devices (deprecated)

**POST** `/accounts/{account_id}/devices/revoke`

Revokes a list of devices. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled.

**Deprecated**: please use POST /accounts/{account_id}/devices/registrations/revoke instead.


### Responses

#### 200 Revoke devices response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Revoke devices response failure.

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



## Unrevoke devices (deprecated)

**POST** `/accounts/{account_id}/devices/unrevoke`

Unrevokes a list of devices. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled.

**Deprecated**: please use POST /accounts/{account_id}/devices/registrations/unrevoke instead.


### Responses

#### 200 Unrevoke devices response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Unrevoke devices response failure.

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



## Get device (deprecated)

**GET** `/accounts/{account_id}/devices/{device_id}`

Fetches a single WARP device. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled for the account.

**Deprecated**: please use one of the following endpoints instead:
- GET /accounts/{account_id}/devices/physical-devices/{device_id}
- GET /accounts/{account_id}/devices/registrations/{registration_id}


### Responses

#### 200 Get device details response.

> Data is at `body["result"]`

```json
{
  "account": {
    "account_type": "*string*",
    "id": "*string*",
    "name": "*string*"
  },
  "created": "*string*",
  "deleted": "*boolean*",
  "device_type": "*string*",
  "gateway_device_id": "*string*",
  "id": "*string*",
  "ip": "*string*",
  "key": "*string*",
  "key_type": "*string*",
  "last_seen": "*string*",
  "mac_address": "*string*",
  "model": "*string*",
  "name": "*string*",
  "os_version": "*string*",
  "serial_number": "*string*",
  "tunnel_type": "*string*",
  "updated": "*string*",
  "user": {
    "email": "*string*",
    "id": "*string*",
    "name": "*string*"
  },
  "version": "*string*"
}
```

#### 4XX Get device details response failure.

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



## Get override codes (deprecated)


**GET** `/accounts/{account_id}/devices/{device_id}/override_codes`

Fetches a one-time use admin override code for a device. This relies on the **Admin Override** setting being enabled in your device configuration. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled for the account.
**Deprecated:** please use GET /accounts/{account_id}/devices/registrations/{registration_id}/override_codes instead.


### Responses

#### 200 Get an admin override code for a device response.

> Data is at `body["result"]`

```json
{
  "disable_for_time": {
    "1": "*string*",
    "12": "*string*",
    "24": "*string*",
    "3": "*string*",
    "6": "*string*"
  }
}
```

#### 4XX Get an admin override code for a device response failure.

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



## Update device certificate provisioning status

**PATCH** `/zones/{zone_id}/devices/policy/certificates`

Enable Zero Trust Clients to provision a certificate, containing a x509 subject, and referenced by Access device posture policies when the client visits MTLS protected domains. This facilitates device posture without a WARP session.

### Responses

#### 200 Update a zone to toggle permission for devices to provision certificates response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Patch a zone to toggle permission for devices to provision certificates failure.

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



## Get device certificate provisioning status

**GET** `/zones/{zone_id}/devices/policy/certificates`

Fetches device certificate provisioning.

### Responses

#### 200 Get WARP client provision certificates enabled status response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Get WARP client provision certificates enabled status failure.

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


