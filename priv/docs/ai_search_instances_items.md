# AI Search Instances Items

## Create or Update Item.

**PUT** `/accounts/{account_id}/ai-search/instances/{id}/items`



### Responses

#### 200 Returns a AI Search Item detail.

> Data is at `body["result"]`

```json
{
  "error": "*string*",
  "id": "*string*",
  "key": "*string*",
  "last_seen_at": "*string*",
  "next_action": "*string*",
  "status": "*string*"
}
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

#### 500 Internal Error.

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



## Items List.

**GET** `/accounts/{account_id}/ai-search/instances/{id}/items`



### Responses

#### 200 Returns the AI Search items.

> Data is at `body["result"]`

```json
[
  {
    "error": "*string*",
    "id": "*string*",
    "key": "*string*",
    "last_seen_at": "*string*",
    "next_action": "*string*",
    "status": "*string*"
  }
]
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

#### 500 Internal Error.

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



## Sync Item.

**PATCH** `/accounts/{account_id}/ai-search/instances/{id}/items/{item_id}`



### Responses

#### 200 Returns a AI Search Item detail.

> Data is at `body["result"]`

```json
{
  "error": "*string*",
  "id": "*string*",
  "key": "*string*",
  "last_seen_at": "*string*",
  "next_action": "*string*",
  "status": "*string*"
}
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

#### 500 Internal Error.

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



## Get Item.

**GET** `/accounts/{account_id}/ai-search/instances/{id}/items/{item_id}`



### Responses

#### 200 Returns a AI Search Item detail.

> Data is at `body["result"]`

```json
{
  "error": "*string*",
  "id": "*string*",
  "key": "*string*",
  "last_seen_at": "*string*",
  "next_action": "*string*",
  "status": "*string*"
}
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

#### 500 Internal Error.

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


