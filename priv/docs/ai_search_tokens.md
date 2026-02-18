# AI Search Tokens

## Create new tokens.

**POST** `/accounts/{account_id}/ai-search/tokens`



### Responses

#### 201 Returns the created Object

> Data is at `body["result"]`

```json
{
  "cf_api_id": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "legacy": "*boolean*",
  "modified_at": "*string*",
  "modified_by": "*string*",
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



## List tokens.

**GET** `/accounts/{account_id}/ai-search/tokens`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "cf_api_id": "*string*",
    "created_at": "*string*",
    "created_by": "*string*",
    "enabled": "*boolean*",
    "id": "*string*",
    "legacy": "*boolean*",
    "modified_at": "*string*",
    "modified_by": "*string*",
    "name": "*string*"
  }
]
```

#### 400 Bad Request.

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



## Update tokens.

**PUT** `/accounts/{account_id}/ai-search/tokens/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "cf_api_id": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "legacy": "*boolean*",
  "modified_at": "*string*",
  "modified_by": "*string*",
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



## Read tokens.

**GET** `/accounts/{account_id}/ai-search/tokens/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "cf_api_id": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "legacy": "*boolean*",
  "modified_at": "*string*",
  "modified_by": "*string*",
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



## Delete tokens.

**DELETE** `/accounts/{account_id}/ai-search/tokens/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "cf_api_id": "*string*",
  "created_at": "*string*",
  "created_by": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "legacy": "*boolean*",
  "modified_at": "*string*",
  "modified_by": "*string*",
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


