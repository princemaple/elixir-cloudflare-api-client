# Secondary DNS (Secondary Zone)

## Force AXFR

**POST** `/zones/{zone_id}/secondary_dns/force_axfr`

Sends AXFR zone transfer request to primary nameserver(s).

### Responses

#### 200 Force AXFR response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Force AXFR response failure.

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



## Update Secondary Zone Configuration

**PUT** `/zones/{zone_id}/secondary_dns/incoming`

Update secondary zone configuration for incoming zone transfers.

### Responses

#### 200 Update Secondary Zone Configuration response.

> Data is at `body["result"]`

```json
{
  "auto_refresh_seconds": "*number*",
  "checked_time": "*string*",
  "created_time": "*string*",
  "id": "*string*",
  "modified_time": "*string*",
  "name": "*string*",
  "peers": [
    "*string*"
  ],
  "soa_serial": "*number*"
}
```

#### 4XX Update Secondary Zone Configuration response failure.

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



## Create Secondary Zone Configuration

**POST** `/zones/{zone_id}/secondary_dns/incoming`

Create secondary zone configuration for incoming zone transfers.

### Responses

#### 200 Create Secondary Zone Configuration response.

> Data is at `body["result"]`

```json
{
  "auto_refresh_seconds": "*number*",
  "checked_time": "*string*",
  "created_time": "*string*",
  "id": "*string*",
  "modified_time": "*string*",
  "name": "*string*",
  "peers": [
    "*string*"
  ],
  "soa_serial": "*number*"
}
```

#### 4XX Create Secondary Zone Configuration response failure.

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



## Secondary Zone Configuration Details

**GET** `/zones/{zone_id}/secondary_dns/incoming`

Get secondary zone configuration for incoming zone transfers.

### Responses

#### 200 Secondary Zone Configuration Details response.

> Data is at `body["result"]`

```json
{
  "auto_refresh_seconds": "*number*",
  "checked_time": "*string*",
  "created_time": "*string*",
  "id": "*string*",
  "modified_time": "*string*",
  "name": "*string*",
  "peers": [
    "*string*"
  ],
  "soa_serial": "*number*"
}
```

#### 4XX Secondary Zone Configuration Details response failure.

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



## Delete Secondary Zone Configuration

**DELETE** `/zones/{zone_id}/secondary_dns/incoming`

Delete secondary zone configuration for incoming zone transfers.

### Responses

#### 200 Delete Secondary Zone Configuration response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Secondary Zone Configuration response failure.

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


