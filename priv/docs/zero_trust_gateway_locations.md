# Zero Trust Gateway locations

## Create a Zero Trust Gateway location

**POST** `/accounts/{account_id}/gateway/locations`

Create a new Zero Trust Gateway location.

### Responses

#### 200 Creates a Zero Trust Gateway location response.

> Data is at `body["result"]`

```json
{
  "client_default": "*boolean*",
  "created_at": "*string*",
  "dns_destination_ips_id": "*string*",
  "dns_destination_ipv6_block_id": "*string*",
  "doh_subdomain": "*string*",
  "ecs_support": "*boolean*",
  "endpoints": {
    "doh": {
      "enabled": "*boolean*",
      "networks": null,
      "require_token": "*boolean*"
    },
    "dot": {
      "enabled": "*boolean*",
      "networks": null
    },
    "ipv4": {
      "enabled": "*boolean*"
    },
    "ipv6": {
      "enabled": "*boolean*",
      "networks": null
    }
  },
  "id": "*string*",
  "ip": "*string*",
  "ipv4_destination": "*string*",
  "ipv4_destination_backup": "*string*",
  "name": "*string*",
  "networks": [
    {
      "network": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX Creates a Zero Trust Gateway location response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List Zero Trust Gateway locations

**GET** `/accounts/{account_id}/gateway/locations`

List Zero Trust Gateway locations for an account.

### Responses

#### 200 Lists Zero Trust Gateway locations response.

> Data is at `body["result"]`

```json
[
  {
    "client_default": "*boolean*",
    "created_at": "*string*",
    "dns_destination_ips_id": "*string*",
    "dns_destination_ipv6_block_id": "*string*",
    "doh_subdomain": "*string*",
    "ecs_support": "*boolean*",
    "endpoints": {
      "doh": null,
      "dot": null,
      "ipv4": null,
      "ipv6": null
    },
    "id": "*string*",
    "ip": "*string*",
    "ipv4_destination": "*string*",
    "ipv4_destination_backup": "*string*",
    "name": "*string*",
    "networks": [
      null
    ],
    "updated_at": "*string*"
  }
]
```

#### 4XX Lists Zero Trust Gateway locations response failure.

```json
{
  "errors": {},
  "messages": {},
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



## Update a Zero Trust Gateway location

**PUT** `/accounts/{account_id}/gateway/locations/{location_id}`

Update a configured Zero Trust Gateway location.

### Responses

#### 200 Updates a Zero Trust Gateway location response.

> Data is at `body["result"]`

```json
{
  "client_default": "*boolean*",
  "created_at": "*string*",
  "dns_destination_ips_id": "*string*",
  "dns_destination_ipv6_block_id": "*string*",
  "doh_subdomain": "*string*",
  "ecs_support": "*boolean*",
  "endpoints": {
    "doh": {
      "enabled": "*boolean*",
      "networks": null,
      "require_token": "*boolean*"
    },
    "dot": {
      "enabled": "*boolean*",
      "networks": null
    },
    "ipv4": {
      "enabled": "*boolean*"
    },
    "ipv6": {
      "enabled": "*boolean*",
      "networks": null
    }
  },
  "id": "*string*",
  "ip": "*string*",
  "ipv4_destination": "*string*",
  "ipv4_destination_backup": "*string*",
  "name": "*string*",
  "networks": [
    {
      "network": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX Updates a Zero Trust Gateway location response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust Gateway location details

**GET** `/accounts/{account_id}/gateway/locations/{location_id}`

Get a single Zero Trust Gateway location.

### Responses

#### 200 Gets Zero Trust Gateway location details response.

> Data is at `body["result"]`

```json
{
  "client_default": "*boolean*",
  "created_at": "*string*",
  "dns_destination_ips_id": "*string*",
  "dns_destination_ipv6_block_id": "*string*",
  "doh_subdomain": "*string*",
  "ecs_support": "*boolean*",
  "endpoints": {
    "doh": {
      "enabled": "*boolean*",
      "networks": null,
      "require_token": "*boolean*"
    },
    "dot": {
      "enabled": "*boolean*",
      "networks": null
    },
    "ipv4": {
      "enabled": "*boolean*"
    },
    "ipv6": {
      "enabled": "*boolean*",
      "networks": null
    }
  },
  "id": "*string*",
  "ip": "*string*",
  "ipv4_destination": "*string*",
  "ipv4_destination_backup": "*string*",
  "name": "*string*",
  "networks": [
    {
      "network": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX Gets Zero Trust Gateway location details response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Delete a Zero Trust Gateway location

**DELETE** `/accounts/{account_id}/gateway/locations/{location_id}`

Delete a configured Zero Trust Gateway location.

### Responses

#### 200 Deletes a Zero Trust Gateway location response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Deletes a Zero Trust Gateway location response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


