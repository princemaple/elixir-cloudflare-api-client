# Magic Network Monitoring Configuration

## Update an entire account configuration

**PUT** `/accounts/{account_id}/mnm/config`

Update an existing network monitoring configuration, requires the entire configuration to be updated at once.

### Responses

#### 200 Update an entire account configuration response

> Data is at `body["result"]`

```json
{
  "default_sampling": "*number*",
  "name": "*string*",
  "router_ips": [
    "*string*"
  ],
  "warp_devices": [
    {
      "id": "*string*",
      "name": "*string*",
      "router_ip": "*string*"
    }
  ]
}
```

#### 4XX Update an entire account configuration response failure

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



## Create account configuration

**POST** `/accounts/{account_id}/mnm/config`

Create a new network monitoring configuration.

### Responses

#### 200 Create account configuration response

> Data is at `body["result"]`

```json
{
  "default_sampling": "*number*",
  "name": "*string*",
  "router_ips": [
    "*string*"
  ],
  "warp_devices": [
    {
      "id": "*string*",
      "name": "*string*",
      "router_ip": "*string*"
    }
  ]
}
```

#### 4XX Create account configuration response failure

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



## Update account configuration fields

**PATCH** `/accounts/{account_id}/mnm/config`

Update fields in an existing network monitoring configuration.

### Responses

#### 200 Update account configuration fields response

> Data is at `body["result"]`

```json
{
  "default_sampling": "*number*",
  "name": "*string*",
  "router_ips": [
    "*string*"
  ],
  "warp_devices": [
    {
      "id": "*string*",
      "name": "*string*",
      "router_ip": "*string*"
    }
  ]
}
```

#### 4XX Update account configuration fields response failure

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



## List account configuration

**GET** `/accounts/{account_id}/mnm/config`

Lists default sampling, router IPs and warp devices for account.

### Responses

#### 200 List account configuration response

> Data is at `body["result"]`

```json
{
  "default_sampling": "*number*",
  "name": "*string*",
  "router_ips": [
    "*string*"
  ],
  "warp_devices": [
    {
      "id": "*string*",
      "name": "*string*",
      "router_ip": "*string*"
    }
  ]
}
```

#### 4XX List account configuration response failure

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



## Delete account configuration

**DELETE** `/accounts/{account_id}/mnm/config`

Delete an existing network monitoring configuration.

### Responses

#### 200 Delete account configuration response

> Data is at `body["result"]`

```json
{
  "default_sampling": "*number*",
  "name": "*string*",
  "router_ips": [
    "*string*"
  ],
  "warp_devices": [
    {
      "id": "*string*",
      "name": "*string*",
      "router_ip": "*string*"
    }
  ]
}
```

#### 4XX Delete account configuration response failure

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



## List rules and account configuration

**GET** `/accounts/{account_id}/mnm/config/full`

Lists default sampling, router IPs, warp devices, and rules for account.

### Responses

#### 200 List rules and account configuration response

> Data is at `body["result"]`

```json
{
  "default_sampling": "*number*",
  "name": "*string*",
  "router_ips": [
    "*string*"
  ],
  "warp_devices": [
    {
      "id": "*string*",
      "name": "*string*",
      "router_ip": "*string*"
    }
  ]
}
```

#### 4XX List rules and account configuration response failure

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


