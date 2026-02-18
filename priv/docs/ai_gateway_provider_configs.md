# AI Gateway Provider Configs

## Create a new Provider Configs

**POST** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs`



### Responses

#### 200 Returns the created Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "alias": "*string*",
  "default_config": "*boolean*",
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "provider_slug": "*string*",
  "rate_limit": "*number*",
  "rate_limit_period": "*number*",
  "secret_id": "*string*",
  "secret_preview": "*string*"
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



## List Provider Configs

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "account_tag": "*string*",
    "alias": "*string*",
    "default_config": "*boolean*",
    "gateway_id": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "provider_slug": "*string*",
    "rate_limit": "*number*",
    "rate_limit_period": "*number*",
    "secret_id": "*string*",
    "secret_preview": "*string*"
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



## Update a Provider Configs

**PUT** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "alias": "*string*",
  "default_config": "*boolean*",
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "provider_slug": "*string*",
  "rate_limit": "*number*",
  "rate_limit_period": "*number*",
  "secret_id": "*string*",
  "secret_preview": "*string*"
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



## Delete a Provider Configs

**DELETE** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "alias": "*string*",
  "default_config": "*boolean*",
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "provider_slug": "*string*",
  "rate_limit": "*number*",
  "rate_limit_period": "*number*",
  "secret_id": "*string*",
  "secret_preview": "*string*"
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


