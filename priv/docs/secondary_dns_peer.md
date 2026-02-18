# Secondary DNS (Peer)

## Create Peer

**POST** `/accounts/{account_id}/secondary_dns/peers`

Create Peer.

### Responses

#### 200 Create Peer response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "ip": "*string*",
  "ixfr_enable": "*boolean*",
  "name": "*string*",
  "port": "*number*",
  "tsig_id": "*string*"
}
```

#### 4XX Create Peer response failure.

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



## List Peers

**GET** `/accounts/{account_id}/secondary_dns/peers`

List Peers.

### Responses

#### 200 List Peers response.

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "ip": "*string*",
    "ixfr_enable": "*boolean*",
    "name": "*string*",
    "port": "*number*",
    "tsig_id": "*string*"
  }
]
```

#### 4XX List Peers response failure.

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update Peer

**PUT** `/accounts/{account_id}/secondary_dns/peers/{peer_id}`

Modify Peer.

### Responses

#### 200 Update Peer response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "ip": "*string*",
  "ixfr_enable": "*boolean*",
  "name": "*string*",
  "port": "*number*",
  "tsig_id": "*string*"
}
```

#### 4XX Update Peer response failure.

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



## Peer Details

**GET** `/accounts/{account_id}/secondary_dns/peers/{peer_id}`

Get Peer.

### Responses

#### 200 Peer Details response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "ip": "*string*",
  "ixfr_enable": "*boolean*",
  "name": "*string*",
  "port": "*number*",
  "tsig_id": "*string*"
}
```

#### 4XX Peer Details response failure.

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



## Delete Peer

**DELETE** `/accounts/{account_id}/secondary_dns/peers/{peer_id}`

Delete Peer.

### Responses

#### 200 Delete Peer response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Peer response failure.

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


