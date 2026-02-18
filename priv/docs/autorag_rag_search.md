# AutoRAG RAG Search

## AI Search

**POST** `/accounts/{account_id}/autorag/rags/{id}/ai-search`



### Responses

#### 200 Returns the log details

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "attributes": {},
      "content": [
        {
          "text": "*string*",
          "type": "*string*"
        }
      ],
      "file_id": "*string*",
      "filename": "*string*",
      "score": "*number*"
    }
  ],
  "has_more": "*boolean*",
  "next_page": "*string*",
  "object": "*string*",
  "response": "*string*",
  "search_query": "*string*"
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



## Search

**POST** `/accounts/{account_id}/autorag/rags/{id}/search`



### Responses

#### 200 Returns the log details

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "attributes": {},
      "content": [
        {
          "text": "*string*",
          "type": "*string*"
        }
      ],
      "file_id": "*string*",
      "filename": "*string*",
      "score": "*number*"
    }
  ],
  "has_more": "*boolean*",
  "next_page": "*string*",
  "object": "*string*",
  "search_query": "*string*"
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


