# API Shield Endpoint Management

## Add operations to a zone

**POST** `/zones/{zone_id}/api_gateway/operations`

Add one or more operations to a zone. Endpoints can contain path variables. Host, method, endpoint will be normalized to a canoncial form when creating an operation and must be unique on the zone. Inserting an operation that matches an existing one will return the record of the already existing operation and update its last_updated date.

### Responses

#### 200 Add operations to a zone response

> Data is at `body["result"]`

```json
[
  {
    "features": {},
    "last_updated": "*string*",
    "operation_id": "*string*"
  }
]
```

#### 4XX Add operations to a zone response failure

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



## Retrieve information about all operations on a zone

**GET** `/zones/{zone_id}/api_gateway/operations`



### Responses

#### 200 Retrieve information about all operations on a zone response

> Data is at `body["result"]`

```json
[
  {
    "features": {}
  }
]
```

#### 4XX Retrieve information about all operations on a zone response failure

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



## Delete multiple operations

**DELETE** `/zones/{zone_id}/api_gateway/operations`



### Responses

#### 200 Delete multiple operations response

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete multiple operations response failure

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



## Add one operation to a zone

**POST** `/zones/{zone_id}/api_gateway/operations/item`

Add one operation to a zone. Endpoints can contain path variables. Host, method, endpoint will be normalized to a canoncial form when creating an operation and must be unique on the zone. Inserting an operation that matches an existing one will return the record of the already existing operation and update its last_updated date.

### Responses

#### 200 Add one operation to a zone response

> Data is at `body["result"]`

```json
{
  "features": {},
  "last_updated": "*string*",
  "operation_id": "*string*"
}
```

#### 4XX Add one operation to a zone response failure

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



## Retrieve information about an operation

**GET** `/zones/{zone_id}/api_gateway/operations/{operation_id}`



### Responses

#### 200 Retrieve information about an operation response

> Data is at `body["result"]`

```json
{
  "features": {},
  "last_updated": "*string*",
  "operation_id": "*string*"
}
```

#### 4XX Retrieve information about an operation response failure

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



## Delete an operation

**DELETE** `/zones/{zone_id}/api_gateway/operations/{operation_id}`



### Responses

#### 200 Delete an operation response

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete an operation response failure

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



## Retrieve operations and features as OpenAPI schemas

**GET** `/zones/{zone_id}/api_gateway/schemas`



### Responses

#### 200 Retrieve operations and features as OpenAPI schemas response

> Data is at `body["result"]`

```json
{
  "schemas": [
    {}
  ],
  "timestamp": "*string*"
}
```

#### 4XX Retrieve operations and features as OpenAPI schemas response failure

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


