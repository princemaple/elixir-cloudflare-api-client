# AI Gateway Dynamic Routes

## Create a new AI Gateway Dynamic Route.

**POST** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes`

Create a new AI Gateway Dynamic Route.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "created_at": "*string*",
  "deployment": {
    "comment": "*string*",
    "created_at": "*string*",
    "deployment_id": "*string*",
    "version_id": "*string*"
  },
  "elements": [
    null
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "version": {
    "active": "*string*",
    "comment": "*string*",
    "created_at": "*string*",
    "data": "*string*",
    "version_id": "*string*"
  }
}
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



## List all AI Gateway Dynamic Routes.

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes`

List all AI Gateway Dynamic Routes.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "data": {
    "order_by": "*string*",
    "order_by_direction": "*string*",
    "page": "*number*",
    "per_page": "*number*",
    "routes": [
      {
        "account_tag": "*string*",
        "created_at": "*string*",
        "deployment": {
          "comment": "*string*",
          "created_at": "*string*",
          "deployment_id": "*string*",
          "version_id": "*string*"
        },
        "elements": [
          null
        ],
        "gateway_id": "*string*",
        "id": "*string*",
        "modified_at": "*string*",
        "name": "*string*",
        "version": {
          "active": "*string*",
          "comment": "*string*",
          "created_at": "*string*",
          "data": "*string*",
          "version_id": "*string*"
        }
      }
    ]
  },
  "success": "*boolean*"
}
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



## Update an AI Gateway Dynamic Route.

**PATCH** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}`

Update an AI Gateway Dynamic Route.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "route": {
    "account_tag": "*string*",
    "created_at": "*string*",
    "deployment": {
      "comment": "*string*",
      "created_at": "*string*",
      "deployment_id": "*string*",
      "version_id": "*string*"
    },
    "elements": [
      null
    ],
    "gateway_id": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "version": {
      "active": "*string*",
      "comment": "*string*",
      "created_at": "*string*",
      "data": "*string*",
      "version_id": "*string*"
    }
  },
  "success": "*boolean*"
}
```

#### 400 Input Error

```json
{
  "route": {
    "account_tag": "*string*",
    "created_at": "*string*",
    "elements": [
      null
    ],
    "gateway_id": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*"
  },
  "success": "*boolean*"
}
```



## Get an AI Gateway Dynamic Route.

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}`

Get an AI Gateway Dynamic Route.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "created_at": "*string*",
  "deployment": {
    "comment": "*string*",
    "created_at": "*string*",
    "deployment_id": "*string*",
    "version_id": "*string*"
  },
  "elements": [
    null
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "version": {
    "active": "*string*",
    "comment": "*string*",
    "created_at": "*string*",
    "data": "*string*",
    "version_id": "*string*"
  }
}
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



## Delete an AI Gateway Dynamic Route.

**DELETE** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}`

Delete an AI Gateway Dynamic Route.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "created_at": "*string*",
  "elements": [
    null
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
}
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



## Create a new AI Gateway Dynamic Route Deployment.

**POST** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}/deployments`

Create a new AI Gateway Dynamic Route Deployment.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "created_at": "*string*",
  "elements": [
    null
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
}
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



## List all AI Gateway Dynamic Route Deployments.

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}/deployments`

List all AI Gateway Dynamic Route Deployments.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "data": {
    "deployments": [
      {
        "comment": "*string*",
        "created_at": "*string*",
        "deployment_id": "*string*",
        "version_id": "*string*"
      }
    ],
    "order_by": "*string*",
    "order_by_direction": "*string*",
    "page": "*number*",
    "per_page": "*number*"
  },
  "success": "*boolean*"
}
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



## Create a new AI Gateway Dynamic Route Version.

**POST** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}/versions`

Create a new AI Gateway Dynamic Route Version.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "created_at": "*string*",
  "elements": [
    null
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
}
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



## List all AI Gateway Dynamic Route Versions.

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}/versions`

List all AI Gateway Dynamic Route Versions.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "data": {
    "order_by": "*string*",
    "order_by_direction": "*string*",
    "page": "*number*",
    "per_page": "*number*",
    "versions": [
      {
        "active": "*string*",
        "comment": "*string*",
        "created_at": "*string*",
        "data": "*string*",
        "version_id": "*string*"
      }
    ]
  },
  "success": "*boolean*"
}
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



## Get an AI Gateway Dynamic Route Version.

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/routes/{id}/versions/{version_id}`

Get an AI Gateway Dynamic Route Version.

### Responses

#### 200 Success

> Data is at `body["result"]`

```json
{
  "account_tag": "*string*",
  "active": "*string*",
  "comment": "*string*",
  "created_at": "*string*",
  "data": "*string*",
  "elements": [
    null
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "version_id": "*string*"
}
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


