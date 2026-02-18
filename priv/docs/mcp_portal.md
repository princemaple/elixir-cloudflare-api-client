# MCP Portal

## Create a new MCP Portal

**POST** `/accounts/{account_id}/access/ai-controls/mcp/portals`



### Responses

#### 201 Returns the created Object

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "secure_web_gateway": "*boolean*"
}
```

#### 400 Input Validation Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*",
      "path": [
        "*string*"
      ]
    }
  ],
  "success": "*boolean*"
}
```



## List MCP Portals

**GET** `/accounts/{account_id}/access/ai-controls/mcp/portals`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "created_by": "*string*",
    "description": "*string*",
    "hostname": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "modified_by": "*string*",
    "name": "*string*",
    "secure_web_gateway": "*boolean*"
  }
]
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a MCP Portal

**PUT** `/accounts/{account_id}/access/ai-controls/mcp/portals/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "secure_web_gateway": "*boolean*"
}
```

#### 400 Input Validation Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*",
      "path": [
        "*string*"
      ]
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Read details of an MCP Portal

**GET** `/accounts/{account_id}/access/ai-controls/mcp/portals/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "secure_web_gateway": "*boolean*",
  "servers": [
    {
      "auth_type": "*string*",
      "created_at": "*string*",
      "created_by": "*string*",
      "default_disabled": "*boolean*",
      "description": "*string*",
      "error": "*string*",
      "hostname": "*string*",
      "id": "*string*",
      "last_successful_sync": "*string*",
      "last_synced": "*string*",
      "modified_at": "*string*",
      "modified_by": "*string*",
      "name": "*string*",
      "on_behalf": "*boolean*",
      "prompts": [
        {}
      ],
      "status": "*string*",
      "tools": [
        {}
      ],
      "updated_prompts": [
        {}
      ],
      "updated_tools": [
        {}
      ]
    }
  ]
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Delete a MCP Portal

**DELETE** `/accounts/{account_id}/access/ai-controls/mcp/portals/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "secure_web_gateway": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


