# API Shield API Discovery

## Retrieve discovered operations on a zone rendered as OpenAPI schemas

**GET** `/zones/{zone_id}/api_gateway/discovery`

Retrieve the most up to date view of discovered operations, rendered as OpenAPI schemas

### Responses

#### 200 Retrieve discovered operations on a zone, rendered as OpenAPI schemas response

> Data is at `body["result"]`

```json
{
  "schemas": [
    {}
  ],
  "timestamp": "*string*"
}
```

#### 4XX Retrieve discovered operations on a zone, rendered as OpenAPI schemas response failure

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



## Patch discovered operations

**PATCH** `/zones/{zone_id}/api_gateway/discovery/operations`

Update the `state` on one or more discovered operations

### Responses

#### 200 Patch discovered operations response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Patch discovered operations response failure

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



## Retrieve discovered operations on a zone

**GET** `/zones/{zone_id}/api_gateway/discovery/operations`

Retrieve the most up to date view of discovered operations

### Responses

#### 200 Retrieve discovered operations on a zone response

> Data is at `body["result"]`

```json
[
  {
    "endpoint": "*string*",
    "features": {
      "traffic_stats": {
        "last_updated": null,
        "period_seconds": null,
        "requests": null
      }
    },
    "host": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "method": "*string*",
    "origin": [
      "*string*"
    ],
    "state": "*string*"
  }
]
```

#### 4XX Retrieve discovered operations on a zone response failure

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



## Patch discovered operation

**PATCH** `/zones/{zone_id}/api_gateway/discovery/operations/{operation_id}`

Update the `state` on a discovered operation

### Responses

#### 200 Patch discovered operation response

> Data is at `body["result"]`

```json
{
  "state": "*string*"
}
```

#### 4XX Patch discovered operation response failure

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


