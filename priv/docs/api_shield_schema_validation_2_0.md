# API Shield Schema Validation 2.0

## Update multiple operation-level schema validation settings

**PATCH** `/zones/{zone_id}/api_gateway/operations/schema_validation`

Updates multiple operation-level schema validation settings on the zone

### Responses

#### 200 Update multiple operation-level schema validation settings response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update multiple operation-level schema validation settings response failure

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



## Update operation-level schema validation settings

**PUT** `/zones/{zone_id}/api_gateway/operations/{operation_id}/schema_validation`

Updates operation-level schema validation settings on the zone

### Responses

#### 200 Update operation-level schema validation settings response

> Data is at `body["result"]`

```json
{
  "mitigation_action": "*string*",
  "operation_id": "*string*"
}
```

#### 4XX Update operation-level schema validation settings response failure

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



## Retrieve operation-level schema validation settings

**GET** `/zones/{zone_id}/api_gateway/operations/{operation_id}/schema_validation`

Retrieves operation-level schema validation settings on the zone

### Responses

#### 200 Operation-level schema validation settings response

> Data is at `body["result"]`

```json
{
  "mitigation_action": "*string*",
  "operation_id": "*string*"
}
```

#### 4XX Operation-level schema validation settings response

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



## Update zone level schema validation settings

**PUT** `/zones/{zone_id}/api_gateway/settings/schema_validation`

Updates zone level schema validation settings on the zone

### Responses

#### 200 Update zone level schema validation settings response

> Data is at `body["result"]`

```json
{
  "validation_default_mitigation_action": "*string*",
  "validation_override_mitigation_action": "*string*"
}
```

#### 4XX Update zone level schema validation settings response failure

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



## Update zone level schema validation settings

**PATCH** `/zones/{zone_id}/api_gateway/settings/schema_validation`

Updates zone level schema validation settings on the zone

### Responses

#### 200 Update zone level schema validation settings response

> Data is at `body["result"]`

```json
{
  "validation_default_mitigation_action": "*string*",
  "validation_override_mitigation_action": "*string*"
}
```

#### 4XX Update zone level schema validation settings response failure

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



## Retrieve zone level schema validation settings

**GET** `/zones/{zone_id}/api_gateway/settings/schema_validation`

Retrieves zone level schema validation settings currently set on the zone

### Responses

#### 200 Zone level schema validation settings response

> Data is at `body["result"]`

```json
{
  "validation_default_mitigation_action": "*string*",
  "validation_override_mitigation_action": "*string*"
}
```

#### 4XX Zone level schema validation settings response failure

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



## Upload a schema to a zone

**POST** `/zones/{zone_id}/api_gateway/user_schemas`



### Responses

#### 200 Upload a schema response

> Data is at `body["result"]`

```json
{
  "schema": {
    "created_at": "*string*",
    "kind": "*string*",
    "name": "*string*",
    "schema_id": "*string*",
    "source": "*string*",
    "validation_enabled": "*boolean*"
  },
  "upload_details": {
    "warnings": [
      {
        "code": null,
        "locations": null,
        "message": null
      }
    ]
  }
}
```

#### 4XX Upload a schema response failure

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
  "success": "*boolean*",
  "upload_details": {
    "critical": [
      {
        "code": null,
        "locations": null,
        "message": null
      }
    ],
    "errors": [
      {
        "code": null,
        "locations": null,
        "message": null
      }
    ]
  }
}
```



## Retrieve information about all schemas on a zone

**GET** `/zones/{zone_id}/api_gateway/user_schemas`



### Responses

#### 200 Retrieve information about all schemas on a zone response

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "kind": "*string*",
    "name": "*string*",
    "schema_id": "*string*",
    "source": "*string*",
    "validation_enabled": "*boolean*"
  }
]
```

#### 4XX Retrieve information about all schemas on a zone response failure

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



## Retrieve schema hosts in a zone

**GET** `/zones/{zone_id}/api_gateway/user_schemas/hosts`



### Responses

#### 200 Retrieve schema hosts in a zone response

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "hosts": [
      "*string*"
    ],
    "name": "*string*",
    "schema_id": "*string*"
  }
]
```

#### 4XX Retrieve schema hosts in a zone response failure

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



## Enable validation for a schema

**PATCH** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}`



### Responses

#### 200 Enable validation for a schema response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "kind": "*string*",
  "name": "*string*",
  "schema_id": "*string*",
  "source": "*string*",
  "validation_enabled": "*boolean*"
}
```

#### 4XX Enable validation for a schema response failure

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



## Retrieve information about a specific schema on a zone

**GET** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}`



### Responses

#### 200 Retrieve information about a specific schema on a zone response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "kind": "*string*",
  "name": "*string*",
  "schema_id": "*string*",
  "source": "*string*",
  "validation_enabled": "*boolean*"
}
```

#### 4XX Retrieve information about a specific schema zone response failure

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



## Delete a schema

**DELETE** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}`



### Responses

#### 200 Delete a schema response

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

#### 4XX Delete a schema response failure

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



## Retrieve all operations from a schema.

**GET** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}/operations`

Retrieves all operations from the schema. Operations that already exist in API Shield Endpoint Management will be returned as full operations.

### Responses

#### 200 Retrieve all operations from a schema response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Retrieve all operations from a schema response failure

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


