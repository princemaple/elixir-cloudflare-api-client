# AI Search Instances Jobs

## Create new job

**POST** `/accounts/{account_id}/ai-search/instances/{id}/jobs`



### Responses

#### 200 Returns the AI Search job id.

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



## List Jobs

**GET** `/accounts/{account_id}/ai-search/instances/{id}/jobs`



### Responses

#### 200 Returns a list of AI Search Jobs.

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



## Change Job Status

**PATCH** `/accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}`



### Responses

#### 200 Returns the updated AI Search Job.

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



## Get a Job Details

**GET** `/accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}`



### Responses

#### 200 Returns a AI Search Job Details.

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



## List Job Logs

**GET** `/accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}/logs`



### Responses

#### 200 Returns a list of AI Search Job Logs.

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


