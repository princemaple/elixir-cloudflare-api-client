# AI Gateway Logs

## List Gateway Logs

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/logs`



### Responses

#### 200 Returns a list of Gateway Logs

> Data is at `body["result"]`

```json
[
  {
    "cached": "*boolean*",
    "cost": "*number*",
    "created_at": "*string*",
    "custom_cost": "*boolean*",
    "duration": "*integer*",
    "id": "*string*",
    "metadata": "*string*",
    "model": "*string*",
    "model_type": "*string*",
    "path": "*string*",
    "provider": "*string*",
    "request_content_type": "*string*",
    "request_type": "*string*",
    "response_content_type": "*string*",
    "status_code": "*integer*",
    "step": "*integer*",
    "success": "*boolean*",
    "tokens_in": "*integer*",
    "tokens_out": "*integer*"
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



## Delete Gateway Logs

**DELETE** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/logs`



### Responses

#### 200 Returns if the delete was successful

> Data is at `body["result"]`

```json
{
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



## Patch Gateway Log

**PATCH** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/logs/{id}`



### Responses

#### 200 Returns the log details

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



## Get Gateway Log Detail

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/logs/{id}`



### Responses

#### 200 Returns the log details

> Data is at `body["result"]`

```json
{
  "cached": "*boolean*",
  "cost": "*number*",
  "created_at": "*string*",
  "custom_cost": "*boolean*",
  "duration": "*integer*",
  "id": "*string*",
  "metadata": "*string*",
  "model": "*string*",
  "model_type": "*string*",
  "path": "*string*",
  "provider": "*string*",
  "request_content_type": "*string*",
  "request_head": "*string*",
  "request_head_complete": "*boolean*",
  "request_size": "*integer*",
  "request_type": "*string*",
  "response_content_type": "*string*",
  "response_head": "*string*",
  "response_head_complete": "*boolean*",
  "response_size": "*integer*",
  "status_code": "*integer*",
  "step": "*integer*",
  "success": "*boolean*",
  "tokens_in": "*integer*",
  "tokens_out": "*integer*"
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



## Get Gateway Log Request

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/logs/{id}/request`



### Responses

#### 200 Returns the request body from a specific log

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



## Get Gateway Log Response

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/logs/{id}/response`



### Responses

#### 200 Returns the response body from a specific log

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


