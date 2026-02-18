# Magic Site WANs

## Create a new Site WAN

**POST** `/accounts/{account_id}/magic/sites/{site_id}/wans`

Creates a new Site WAN.

### Responses

#### 200 Create Site WAN response

> Data is at `body["result"]`

```json
[
  {
    "health_check_rate": "*string*",
    "id": "*string*",
    "name": "*string*",
    "physport": "*integer*",
    "priority": "*integer*",
    "site_id": "*string*",
    "static_addressing": {
      "address": null,
      "gateway_address": null,
      "secondary_address": null
    },
    "vlan_tag": "*integer*"
  }
]
```

#### 4XX Create Site WAN response failure

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



## List Site WANs

**GET** `/accounts/{account_id}/magic/sites/{site_id}/wans`

Lists Site WANs associated with an account.

### Responses

#### 200 List Site WANs response

> Data is at `body["result"]`

```json
[
  {
    "health_check_rate": "*string*",
    "id": "*string*",
    "name": "*string*",
    "physport": "*integer*",
    "priority": "*integer*",
    "site_id": "*string*",
    "static_addressing": {
      "address": null,
      "gateway_address": null,
      "secondary_address": null
    },
    "vlan_tag": "*integer*"
  }
]
```

#### 4XX List Site WANs response failure

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



## Update Site WAN

**PUT** `/accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`

Update a specific Site WAN.

### Responses

#### 200 Update Site WAN response

> Data is at `body["result"]`

```json
{
  "health_check_rate": "*string*",
  "id": "*string*",
  "name": "*string*",
  "physport": "*integer*",
  "priority": "*integer*",
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "gateway_address": "*string*",
    "secondary_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Update Site WAN response failure

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



## Patch Site WAN

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`

Patch a specific Site WAN.

### Responses

#### 200 Patch Site WAN response

> Data is at `body["result"]`

```json
{
  "health_check_rate": "*string*",
  "id": "*string*",
  "name": "*string*",
  "physport": "*integer*",
  "priority": "*integer*",
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "gateway_address": "*string*",
    "secondary_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Patch Site WAN response failure

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



## Site WAN Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`

Get a specific Site WAN.

### Responses

#### 200 Site WAN Details response

> Data is at `body["result"]`

```json
{
  "health_check_rate": "*string*",
  "id": "*string*",
  "name": "*string*",
  "physport": "*integer*",
  "priority": "*integer*",
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "gateway_address": "*string*",
    "secondary_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Site WAN Details response failure

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



## Delete Site WAN

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`

Remove a specific Site WAN.

### Responses

#### 200 Delete Site WAN response

> Data is at `body["result"]`

```json
{
  "health_check_rate": "*string*",
  "id": "*string*",
  "name": "*string*",
  "physport": "*integer*",
  "priority": "*integer*",
  "site_id": "*string*",
  "static_addressing": {
    "address": "*string*",
    "gateway_address": "*string*",
    "secondary_address": "*string*"
  },
  "vlan_tag": "*integer*"
}
```

#### 4XX Delete Site WAN response failure

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


