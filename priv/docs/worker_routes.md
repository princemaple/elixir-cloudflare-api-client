# Worker Routes

## Create Route

**POST** `/zones/{zone_id}/workers/routes`

Creates a route that maps a URL pattern to a Worker.

### Responses

#### 200 Create Route response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "pattern": "*string*",
  "script": "*string*"
}
```

#### 4XX Create Route response failure.

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



## List Routes

**GET** `/zones/{zone_id}/workers/routes`

Returns routes for a zone.

### Responses

#### 200 List Routes response.

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "pattern": "*string*",
    "script": "*string*"
  }
]
```

#### 4XX List Routes response failure.

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



## Update Route

**PUT** `/zones/{zone_id}/workers/routes/{route_id}`

Updates the URL pattern or Worker associated with a route.

### Responses

#### 200 Update Route response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "pattern": "*string*",
  "script": "*string*"
}
```

#### 4XX Update Route response failure.

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



## Get Route

**GET** `/zones/{zone_id}/workers/routes/{route_id}`

Returns information about a route, including URL pattern and Worker.

### Responses

#### 200 Get Route response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "pattern": "*string*",
  "script": "*string*"
}
```

#### 4XX Get Route response failure.

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



## Delete Route

**DELETE** `/zones/{zone_id}/workers/routes/{route_id}`

Deletes a route.

### Responses

#### 200 Delete Route response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Route response failure.

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


