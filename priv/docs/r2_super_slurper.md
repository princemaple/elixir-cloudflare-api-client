# R2 Super Slurper

## Create a job

**POST** `/accounts/{account_id}/slurper/jobs`



### Responses

#### 201 Job created

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 409 Maximum number of concurrent jobs has been reached

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## List jobs

**GET** `/accounts/{account_id}/slurper/jobs`



### Responses

#### 200 A list of jobs

> Data is at `body["result"]`

```json
[
  {
    "createdAt": "*string*",
    "finishedAt": "*string*",
    "id": "*string*",
    "overwrite": "*boolean*",
    "source": null,
    "status": "*string*",
    "target": {
      "bucket": "*string*",
      "jurisdiction": "*string*",
      "vendor": "*string*"
    }
  }
]
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Abort all jobs

**PUT** `/accounts/{account_id}/slurper/jobs/abortAll`



### Responses

#### 200 All jobs aborted

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get job details

**GET** `/accounts/{account_id}/slurper/jobs/{job_id}`



### Responses

#### 200 Job details

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "finishedAt": "*string*",
  "id": "*string*",
  "overwrite": "*boolean*",
  "source": null,
  "status": "*string*",
  "target": {
    "bucket": "*string*",
    "jurisdiction": "*string*",
    "vendor": "*string*"
  }
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Abort a job

**PUT** `/accounts/{account_id}/slurper/jobs/{job_id}/abort`



### Responses

#### 200 Job aborted

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get job logs

**GET** `/accounts/{account_id}/slurper/jobs/{job_id}/logs`



### Responses

#### 200 Job logs

> Data is at `body["result"]`

```json
[
  {
    "createdAt": "*string*",
    "job": "*string*",
    "logType": "*string*",
    "message": "*string*",
    "objectKey": "*string*"
  }
]
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Pause a job

**PUT** `/accounts/{account_id}/slurper/jobs/{job_id}/pause`



### Responses

#### 200 Job paused

> Data is at `body["result"]`

```json
"*string*"
```

#### 409 Job is not paused

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get job progress

**GET** `/accounts/{account_id}/slurper/jobs/{job_id}/progress`



### Responses

#### 200 Job progress

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "failedObjects": "*integer*",
  "id": "*string*",
  "objects": "*integer*",
  "skippedObjects": "*integer*",
  "status": "*string*",
  "transferredObjects": "*integer*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Resume a job

**PUT** `/accounts/{account_id}/slurper/jobs/{job_id}/resume`



### Responses

#### 200 Job resumed

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Check source connectivity

**PUT** `/accounts/{account_id}/slurper/source/connectivity-precheck`

Check whether tokens are valid against the source bucket

### Responses

#### 200 Source connectivity checked

> Data is at `body["result"]`

```json
{
  "connectivityStatus": "*string*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Check target connectivity

**PUT** `/accounts/{account_id}/slurper/target/connectivity-precheck`

Check whether tokens are valid against the target bucket

### Responses

#### 200 Target connectivity checked

> Data is at `body["result"]`

```json
{
  "connectivityStatus": "*string*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```


