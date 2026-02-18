# Secondary DNS (Primary Zone)

## Update Primary Zone Configuration

**PUT** `/zones/{zone_id}/secondary_dns/outgoing`

Update primary zone configuration for outgoing zone transfers.

### Responses

#### 200 Update Primary Zone Configuration response.

> Data is at `body["result"]`

```json
{
  "checked_time": "*string*",
  "created_time": "*string*",
  "id": "*string*",
  "last_transferred_time": "*string*",
  "name": "*string*",
  "peers": [
    "*string*"
  ],
  "soa_serial": "*number*"
}
```

#### 4XX Update Primary Zone Configuration response failure.

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



## Create Primary Zone Configuration

**POST** `/zones/{zone_id}/secondary_dns/outgoing`

Create primary zone configuration for outgoing zone transfers.

### Responses

#### 200 Create Primary Zone Configuration response.

> Data is at `body["result"]`

```json
{
  "checked_time": "*string*",
  "created_time": "*string*",
  "id": "*string*",
  "last_transferred_time": "*string*",
  "name": "*string*",
  "peers": [
    "*string*"
  ],
  "soa_serial": "*number*"
}
```

#### 4XX Create Primary Zone Configuration response failure.

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



## Primary Zone Configuration Details

**GET** `/zones/{zone_id}/secondary_dns/outgoing`

Get primary zone configuration for outgoing zone transfers.

### Responses

#### 200 Primary Zone Configuration Details response.

> Data is at `body["result"]`

```json
{
  "checked_time": "*string*",
  "created_time": "*string*",
  "id": "*string*",
  "last_transferred_time": "*string*",
  "name": "*string*",
  "peers": [
    "*string*"
  ],
  "soa_serial": "*number*"
}
```

#### 4XX Primary Zone Configuration Details response failure.

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



## Delete Primary Zone Configuration

**DELETE** `/zones/{zone_id}/secondary_dns/outgoing`

Delete primary zone configuration for outgoing zone transfers.

### Responses

#### 200 Delete Primary Zone Configuration response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Primary Zone Configuration response failure.

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



## Disable Outgoing Zone Transfers

**POST** `/zones/{zone_id}/secondary_dns/outgoing/disable`

Disable outgoing zone transfers for primary zone and clears IXFR backlog of primary zone.

### Responses

#### 200 Disable Outgoing Zone Transfers response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Disable Outgoing Zone Transfers response failure.

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



## Enable Outgoing Zone Transfers

**POST** `/zones/{zone_id}/secondary_dns/outgoing/enable`

Enable outgoing zone transfers for primary zone.

### Responses

#### 200 Enable Outgoing Zone Transfers response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Enable Outgoing Zone Transfers response failure.

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



## Force DNS NOTIFY

**POST** `/zones/{zone_id}/secondary_dns/outgoing/force_notify`

Notifies the secondary nameserver(s) and clears IXFR backlog of primary zone.

### Responses

#### 200 Force DNS NOTIFY response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Force DNS NOTIFY response failure.

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



## Get Outgoing Zone Transfer Status

**GET** `/zones/{zone_id}/secondary_dns/outgoing/status`

Get primary zone transfer status.

### Responses

#### 200 Get Outgoing Zone Transfer Status response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Get Outgoing Zone Transfer Status response failure.

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


