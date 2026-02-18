# AI Gateway Datasets

## Create a new Dataset

**POST** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets`



### Responses

#### 200 Returns the created Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "enable": "*boolean*",
  "filters": [
    {
      "key": "*string*",
      "operator": "*string*",
      "value": [
        null
      ]
    }
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
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



## List Datasets

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "account_tag": "*string*",
    "created_at": "*string*",
    "enable": "*boolean*",
    "filters": [
      {
        "key": "*string*",
        "operator": "*string*",
        "value": [
          null
        ]
      }
    ],
    "gateway_id": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*"
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



## Update a Dataset

**PUT** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "enable": "*boolean*",
  "filters": [
    {
      "key": "*string*",
      "operator": "*string*",
      "value": [
        null
      ]
    }
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
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



## Fetch a Dataset

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "enable": "*boolean*",
  "filters": [
    {
      "key": "*string*",
      "operator": "*string*",
      "value": [
        null
      ]
    }
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
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



## Delete a Dataset

**DELETE** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "enable": "*boolean*",
  "filters": [
    {
      "key": "*string*",
      "operator": "*string*",
      "value": [
        null
      ]
    }
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
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


