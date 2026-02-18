# MCP Portal Servers

## Create a new MCP Server

**POST** `/accounts/{account_id}/access/ai-controls/mcp/servers`



### Responses

#### 201 Returns the created Object

> Data is at `body["result"]`

```json
{
  "auth_type": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "error": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "last_successful_sync": "*string*",
  "last_synced": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "prompts": [
    {}
  ],
  "status": "*string*",
  "tools": [
    {}
  ]
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



## List MCP Servers

**GET** `/accounts/{account_id}/access/ai-controls/mcp/servers`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "auth_type": "*string*",
    "created_at": "*string*",
    "created_by": "*string*",
    "description": "*string*",
    "error": "*string*",
    "hostname": "*string*",
    "id": "*string*",
    "last_successful_sync": "*string*",
    "last_synced": "*string*",
    "modified_at": "*string*",
    "modified_by": "*string*",
    "name": "*string*",
    "prompts": [
      {}
    ],
    "status": "*string*",
    "tools": [
      {}
    ]
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



## Update a MCP Server

**PUT** `/accounts/{account_id}/access/ai-controls/mcp/servers/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "auth_type": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "error": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "last_successful_sync": "*string*",
  "last_synced": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "prompts": [
    {}
  ],
  "status": "*string*",
  "tools": [
    {}
  ]
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



## Read the details of a MCP Server

**GET** `/accounts/{account_id}/access/ai-controls/mcp/servers/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "auth_type": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "error": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "last_successful_sync": "*string*",
  "last_synced": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "prompts": [
    {}
  ],
  "status": "*string*",
  "tools": [
    {}
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



## Delete a MCP Server

**DELETE** `/accounts/{account_id}/access/ai-controls/mcp/servers/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "auth_type": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "description": "*string*",
  "error": "*string*",
  "hostname": "*string*",
  "id": "*string*",
  "last_successful_sync": "*string*",
  "last_synced": "*string*",
  "modified_at": "*string*",
  "modified_by": "*string*",
  "name": "*string*",
  "prompts": [
    {}
  ],
  "status": "*string*",
  "tools": [
    {}
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



## Sync MCP Server Capabilities

**POST** `/accounts/{account_id}/access/ai-controls/mcp/servers/{id}/sync`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{}
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


