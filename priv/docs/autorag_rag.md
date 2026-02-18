# AutoRAG RAG

## Files

**GET** `/accounts/{account_id}/autorag/rags/{id}/files`



### Responses

#### 200 Returns the AI Search files

> Data is at `body["result"]`

```json
[
  {
    "error": "*string*",
    "key": "*string*"
  }
]
```

#### 404 autorag_not_found

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

#### 503 unable_to_connect_to_autorag

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



## Sync

**PATCH** `/accounts/{account_id}/autorag/rags/{id}/sync`



### Responses

#### 200 Returns the autorag sync status

> Data is at `body["result"]`

```json
{
  "job_id": "*string*"
}
```

#### 400 autorag_is_paused

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

#### 404 autorag_not_found

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

#### 429 sync_in_cooldown

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

#### 503 unable_to_connect_to_autorag

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


