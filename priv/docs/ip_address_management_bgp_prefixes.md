# IP Address Management BGP Prefixes

## Create BGP Prefix

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes`

Create a BGP prefix, controlling the BGP advertisement status of a specific subnet. When created, BGP prefixes are initially withdrawn, and can be advertised with the Update BGP Prefix API.

### Responses

#### 200 Create BGP Prefix response

> Data is at `body["result"]`

```json
{
  "asn": "*integer*",
  "asn_prepend_count": "*integer*",
  "auto_advertise_withdraw": "*boolean*",
  "bgp_signal_opts": {
    "enabled": "*boolean*",
    "modified_at": "*string*"
  },
  "cidr": "*string*",
  "created_at": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "on_demand": {
    "advertised": "*boolean*",
    "advertised_modified_at": "*string*",
    "on_demand_enabled": "*boolean*",
    "on_demand_locked": "*boolean*"
  }
}
```

#### 4XX Create BGP Prefix response failure

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



## List BGP Prefixes

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes`

List all BGP Prefixes within the specified IP Prefix. BGP Prefixes are used to control which specific subnets are advertised to the Internet. It is possible to advertise subnets more specific than an IP Prefix by creating more specific BGP Prefixes.

### Responses

#### 200 List BGP Prefixes response

> Data is at `body["result"]`

```json
[
  {
    "asn": "*integer*",
    "asn_prepend_count": "*integer*",
    "auto_advertise_withdraw": "*boolean*",
    "bgp_signal_opts": {
      "enabled": null,
      "modified_at": null
    },
    "cidr": "*string*",
    "created_at": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "on_demand": {
      "advertised": null,
      "advertised_modified_at": null,
      "on_demand_enabled": null,
      "on_demand_locked": null
    }
  }
]
```

#### 4XX List BGP Prefixes response failure

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



## Update BGP Prefix

**PATCH** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`

Update the properties of a BGP Prefix, such as the on demand advertisement status (advertised or withdrawn).

### Responses

#### 200 Update BGP Prefix response

> Data is at `body["result"]`

```json
{
  "asn": "*integer*",
  "asn_prepend_count": "*integer*",
  "auto_advertise_withdraw": "*boolean*",
  "bgp_signal_opts": {
    "enabled": "*boolean*",
    "modified_at": "*string*"
  },
  "cidr": "*string*",
  "created_at": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "on_demand": {
    "advertised": "*boolean*",
    "advertised_modified_at": "*string*",
    "on_demand_enabled": "*boolean*",
    "on_demand_locked": "*boolean*"
  }
}
```

#### 4XX Update BGP Prefix response failure

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



## Fetch BGP Prefix

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`

Retrieve a single BGP Prefix according to its identifier

### Responses

#### 200 Fetch BGP Prefix response

> Data is at `body["result"]`

```json
{
  "asn": "*integer*",
  "asn_prepend_count": "*integer*",
  "auto_advertise_withdraw": "*boolean*",
  "bgp_signal_opts": {
    "enabled": "*boolean*",
    "modified_at": "*string*"
  },
  "cidr": "*string*",
  "created_at": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "on_demand": {
    "advertised": "*boolean*",
    "advertised_modified_at": "*string*",
    "on_demand_enabled": "*boolean*",
    "on_demand_locked": "*boolean*"
  }
}
```

#### 4XX Fetch BGP Prefix response failure

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



## Delete BGP Prefix

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`

Delete a BGP Prefix associated with the specified IP Prefix. A BGP Prefix must be withdrawn before it can be deleted.

### Responses

#### 200 Delete BGP Prefix response

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete BGP Prefix response failure

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


