# Instant Logs jobs for a zone

## Create Instant Logs job

**POST** `/zones/{zone_id}/logpush/edge/jobs`

Creates a new Instant Logs job for a zone.

### Responses

#### 200 Create Instant Logs job response.

> Data is at `body["result"]`

```json
{
  "destination_conf": "*string*",
  "fields": "*string*",
  "filter": "*string*",
  "sample": "*integer*",
  "session_id": "*string*"
}
```

#### 4XX Create Instant Logs job response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Instant Logs jobs

**GET** `/zones/{zone_id}/logpush/edge/jobs`

Lists Instant Logs jobs for a zone.

### Responses

#### 200 List Instant Logs jobs response.

> Data is at `body["result"]`

```json
[
  {
    "destination_conf": "*string*",
    "fields": "*string*",
    "filter": "*string*",
    "sample": "*integer*",
    "session_id": "*string*"
  }
]
```

#### 4XX List Instant Logs jobs response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


