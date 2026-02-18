# Device Managed Networks

## Create a device managed network

**POST** `/accounts/{account_id}/devices/networks`

Creates a new device managed network.

### Responses

#### 200 Create a device managed networks response.

> Data is at `body["result"]`

```json
{
  "config": {},
  "name": "*string*",
  "network_id": "*string*",
  "type": "*string*"
}
```

#### 4XX Create a device managed networks response failure.

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



## List your device managed networks

**GET** `/accounts/{account_id}/devices/networks`

Fetches a list of managed networks for an account.

### Responses

#### 200 List your device managed networks response.

> Data is at `body["result"]`

```json
[
  {
    "config": {},
    "name": "*string*",
    "network_id": "*string*",
    "type": "*string*"
  }
]
```

#### 4XX List your device managed networks response failure.

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



## Update a device managed network

**PUT** `/accounts/{account_id}/devices/networks/{network_id}`

Updates a configured device managed network.

### Responses

#### 200 Update a device managed network response.

> Data is at `body["result"]`

```json
{
  "config": {},
  "name": "*string*",
  "network_id": "*string*",
  "type": "*string*"
}
```

#### 4XX Update a device managed network response failure.

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



## Get device managed network details

**GET** `/accounts/{account_id}/devices/networks/{network_id}`

Fetches details for a single managed network.

### Responses

#### 200 Get device managed network details response.

> Data is at `body["result"]`

```json
{
  "config": {},
  "name": "*string*",
  "network_id": "*string*",
  "type": "*string*"
}
```

#### 4XX Get device managed network details response failure.

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



## Delete a device managed network

**DELETE** `/accounts/{account_id}/devices/networks/{network_id}`

Deletes a device managed network and fetches a list of the remaining device managed networks for an account.

### Responses

#### 200 Delete a device managed network response.

> Data is at `body["result"]`

```json
[
  {
    "config": {},
    "name": "*string*",
    "network_id": "*string*",
    "type": "*string*"
  }
]
```

#### 4XX Delete a device managed network response failure.

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


