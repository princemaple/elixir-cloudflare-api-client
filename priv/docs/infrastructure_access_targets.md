# Infrastructure Access Targets

## Create new target

**POST** `/accounts/{account_id}/infrastructure/targets`



### Responses

#### 200 Successfully created the target

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "ip": {
    "ipv4": {
      "ip_addr": "*string*",
      "virtual_network_id": "*string*"
    },
    "ipv6": {
      "ip_addr": "*string*",
      "virtual_network_id": "*string*"
    }
  },
  "modified_at": "*string*"
}
```

#### 4XX Failed to create the target

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



## List all targets

**GET** `/accounts/{account_id}/infrastructure/targets`

Lists and sorts an account’s targets. Filters are optional and are ANDed
together.

### Responses

#### 200 Successfully retrieved all targets in the account

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "hostname": "*string*",
    "id": "*string*",
    "ip": {
      "ipv4": {
        "ip_addr": null,
        "virtual_network_id": null
      },
      "ipv6": {
        "ip_addr": null,
        "virtual_network_id": null
      }
    },
    "modified_at": "*string*"
  }
]
```

#### 4XX Failed to retrieve all targets in the account

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



## Create new targets

**PUT** `/accounts/{account_id}/infrastructure/targets/batch`

Adds one or more targets.

### Responses

#### 200 Successfully created the targets

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "hostname": "*string*",
    "id": "*string*",
    "ip": {
      "ipv4": {
        "ip_addr": null,
        "virtual_network_id": null
      },
      "ipv6": {
        "ip_addr": null,
        "virtual_network_id": null
      }
    },
    "modified_at": "*string*"
  }
]
```

#### 4XX Failed to create the targets

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



## Delete targets (Deprecated)

**DELETE** `/accounts/{account_id}/infrastructure/targets/batch`

Removes one or more targets.

### Responses

#### 200 Successfully deleted the targets

> Data is at `body["result"]`

```json

```

#### 4XX Failed to delete the targets

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



## Delete targets

**POST** `/accounts/{account_id}/infrastructure/targets/batch_delete`

Removes one or more targets.

### Responses

#### 200 Successfully deleted the targets

> Data is at `body["result"]`

```json

```

#### 4XX Failed to delete the targets

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



## Update target

**PUT** `/accounts/{account_id}/infrastructure/targets/{target_id}`



### Responses

#### 200 Successfully updated the target

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "ip": {
    "ipv4": {
      "ip_addr": "*string*",
      "virtual_network_id": "*string*"
    },
    "ipv6": {
      "ip_addr": "*string*",
      "virtual_network_id": "*string*"
    }
  },
  "modified_at": "*string*"
}
```

#### 4XX Failed to update the target

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



## Get target

**GET** `/accounts/{account_id}/infrastructure/targets/{target_id}`



### Responses

#### 200 Successfully retrieved the target

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "ip": {
    "ipv4": {
      "ip_addr": "*string*",
      "virtual_network_id": "*string*"
    },
    "ipv6": {
      "ip_addr": "*string*",
      "virtual_network_id": "*string*"
    }
  },
  "modified_at": "*string*"
}
```

#### 4XX Failed to retrieve the target

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



## Delete target

**DELETE** `/accounts/{account_id}/infrastructure/targets/{target_id}`



### Responses

#### 200 Successfully deleted the target

> Data is at `body["result"]`

```json

```

#### 4XX Failed to delete the target

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


