# Magic Interconnects

## Update multiple interconnects

**PUT** `/accounts/{account_id}/magic/cf_interconnects`

Updates multiple interconnects associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Update multiple interconnects response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update multiple interconnects response failure

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



## List interconnects

**GET** `/accounts/{account_id}/magic/cf_interconnects`

Lists interconnects associated with an account.

### Responses

#### 200 List interconnects response

> Data is at `body["result"]`

```json
null
```

#### 4XX List interconnects response failure

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



## Update interconnect

**PUT** `/accounts/{account_id}/magic/cf_interconnects/{cf_interconnect_id}`

Updates a specific interconnect associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

### Responses

#### 200 Update interconnect response

> Data is at `body["result"]`

```json
{
  "modified": "*boolean*",
  "modified_interconnect": {
    "automatic_return_routing": "*boolean*",
    "colo_name": "*string*",
    "created_on": "*string*",
    "description": "*string*",
    "gre": {
      "cloudflare_endpoint": "*string*"
    },
    "health_check": {
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
    "name": "*string*"
  }
}
```

#### 4XX Update interconnect response failure

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



## List interconnect Details

**GET** `/accounts/{account_id}/magic/cf_interconnects/{cf_interconnect_id}`

Lists details for a specific interconnect.

### Responses

#### 200 List interconnect Details response

> Data is at `body["result"]`

```json
{
  "interconnect": {
    "automatic_return_routing": "*boolean*",
    "colo_name": "*string*",
    "created_on": "*string*",
    "description": "*string*",
    "gre": {
      "cloudflare_endpoint": "*string*"
    },
    "health_check": {
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
    "name": "*string*"
  }
}
```

#### 4XX List interconnect Details response failure

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


