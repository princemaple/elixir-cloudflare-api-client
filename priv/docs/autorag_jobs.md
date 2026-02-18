# AutoRAG Jobs

## List Jobs

**GET** `/accounts/{account_id}/autorag/rags/{id}/jobs`



### Responses

#### 200 Returns a list of AutoRAG Jobs

> Data is at `body["result"]`

```json
[
  {
    "end_reason": "*string*",
    "ended_at": "*string*",
    "id": "*string*",
    "last_seen_at": "*string*",
    "source": "*string*",
    "started_at": "*string*"
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



## Get a Job Details

**GET** `/accounts/{account_id}/autorag/rags/{id}/jobs/{job_id}`



### Responses

#### 200 Returns a AutoRAG Job Details

> Data is at `body["result"]`

```json
{
  "end_reason": "*string*",
  "ended_at": "*string*",
  "id": "*string*",
  "last_seen_at": "*string*",
  "source": "*string*",
  "started_at": "*string*"
}
```

#### 404 job_not_found

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



## List Job Logs

**GET** `/accounts/{account_id}/autorag/rags/{id}/jobs/{job_id}/logs`



### Responses

#### 200 Returns a list of AutoRAG Job Logs

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*number*",
    "id": "*integer*",
    "message": "*string*",
    "message_type": "*integer*"
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


