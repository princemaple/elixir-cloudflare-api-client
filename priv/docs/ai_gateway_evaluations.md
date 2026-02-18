# AI Gateway Evaluations

## List Evaluators

**GET** `/accounts/{account_id}/ai-gateway/evaluation-types`



### Responses

#### 200 Returns a list of Evaluators

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "enable": "*boolean*",
    "id": "*string*",
    "mandatory": "*boolean*",
    "modified_at": "*string*",
    "name": "*string*",
    "type": "*string*"
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



## Create a new Evaluation

**POST** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/evaluations`



### Responses

#### 200 Returns the created Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "datasets": [
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
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "processed": "*boolean*",
  "results": [
    {
      "created_at": "*string*",
      "evaluation_id": "*string*",
      "evaluation_type_id": "*string*",
      "id": "*string*",
      "modified_at": "*string*",
      "result": "*string*",
      "status": "*number*",
      "status_description": "*string*",
      "total_logs": "*number*"
    }
  ],
  "total_logs": "*number*"
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



## List Evaluations

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/evaluations`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "account_tag": "*string*",
    "created_at": "*string*",
    "datasets": [
      {
        "account_id": "*string*",
        "account_tag": "*string*",
        "created_at": "*string*",
        "enable": "*boolean*",
        "filters": [
          {
            "key": null,
            "operator": null,
            "value": null
          }
        ],
        "gateway_id": "*string*",
        "id": "*string*",
        "modified_at": "*string*",
        "name": "*string*"
      }
    ],
    "gateway_id": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "processed": "*boolean*",
    "results": [
      {
        "created_at": "*string*",
        "evaluation_id": "*string*",
        "evaluation_type_id": "*string*",
        "id": "*string*",
        "modified_at": "*string*",
        "result": "*string*",
        "status": "*number*",
        "status_description": "*string*",
        "total_logs": "*number*"
      }
    ],
    "total_logs": "*number*"
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



## Fetch a Evaluation

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/evaluations/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "datasets": [
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
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "processed": "*boolean*",
  "results": [
    {
      "created_at": "*string*",
      "evaluation_id": "*string*",
      "evaluation_type_id": "*string*",
      "id": "*string*",
      "modified_at": "*string*",
      "result": "*string*",
      "status": "*number*",
      "status_description": "*string*",
      "total_logs": "*number*"
    }
  ],
  "total_logs": "*number*"
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



## Delete a Evaluation

**DELETE** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/evaluations/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "created_at": "*string*",
  "datasets": [
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
  ],
  "gateway_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "processed": "*boolean*",
  "results": [
    {
      "created_at": "*string*",
      "evaluation_id": "*string*",
      "evaluation_type_id": "*string*",
      "id": "*string*",
      "modified_at": "*string*",
      "result": "*string*",
      "status": "*number*",
      "status_description": "*string*",
      "total_logs": "*number*"
    }
  ],
  "total_logs": "*number*"
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


