# Logpush jobs for an account

## List fields

**GET** `/accounts/{account_id}/logpush/datasets/{dataset_id}/fields`

Lists all fields available for a dataset. The response result is. an object with key-value pairs, where keys are field names, and values are descriptions.

### Responses

#### 200 List fields response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX List fields response failure.

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



## List Logpush jobs for a dataset

**GET** `/accounts/{account_id}/logpush/datasets/{dataset_id}/jobs`

Lists Logpush jobs for an account for a dataset.

### Responses

#### 200 List Logpush jobs for a dataset response.

> Data is at `body["result"]`

```json
[
  {
    "dataset": "*string*",
    "destination_conf": "*string*",
    "enabled": "*boolean*",
    "error_message": "*string*",
    "frequency": "*string*",
    "id": "*integer*",
    "kind": "*string*",
    "last_complete": "*string*",
    "last_error": "*string*",
    "logpull_options": "*string*",
    "max_upload_bytes": "*integer*",
    "max_upload_interval_seconds": "*integer*",
    "max_upload_records": "*integer*",
    "name": "*string*",
    "output_options": {
      "CVE-2021-44228": "*boolean*",
      "batch_prefix": "*string*",
      "batch_suffix": "*string*",
      "field_delimiter": "*string*",
      "field_names": [
        null
      ],
      "output_type": "*string*",
      "record_delimiter": "*string*",
      "record_prefix": "*string*",
      "record_suffix": "*string*",
      "record_template": "*string*",
      "sample_rate": "*number*",
      "timestamp_format": "*string*"
    }
  }
]
```

#### 4XX List Logpush jobs for a dataset response failure.

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



## Create Logpush job

**POST** `/accounts/{account_id}/logpush/jobs`

Creates a new Logpush job for an account.

### Responses

#### 200 Create Logpush job response.

> Data is at `body["result"]`

```json
{
  "dataset": "*string*",
  "destination_conf": "*string*",
  "enabled": "*boolean*",
  "error_message": "*string*",
  "frequency": "*string*",
  "id": "*integer*",
  "kind": "*string*",
  "last_complete": "*string*",
  "last_error": "*string*",
  "logpull_options": "*string*",
  "max_upload_bytes": "*integer*",
  "max_upload_interval_seconds": "*integer*",
  "max_upload_records": "*integer*",
  "name": "*string*",
  "output_options": {
    "CVE-2021-44228": "*boolean*",
    "batch_prefix": "*string*",
    "batch_suffix": "*string*",
    "field_delimiter": "*string*",
    "field_names": [
      "*string*"
    ],
    "output_type": "*string*",
    "record_delimiter": "*string*",
    "record_prefix": "*string*",
    "record_suffix": "*string*",
    "record_template": "*string*",
    "sample_rate": "*number*",
    "timestamp_format": "*string*"
  }
}
```

#### 4XX Create Logpush job response failure.

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



## List Logpush jobs

**GET** `/accounts/{account_id}/logpush/jobs`

Lists Logpush jobs for an account.

### Responses

#### 200 List Logpush jobs response.

> Data is at `body["result"]`

```json
[
  {
    "dataset": "*string*",
    "destination_conf": "*string*",
    "enabled": "*boolean*",
    "error_message": "*string*",
    "frequency": "*string*",
    "id": "*integer*",
    "kind": "*string*",
    "last_complete": "*string*",
    "last_error": "*string*",
    "logpull_options": "*string*",
    "max_upload_bytes": "*integer*",
    "max_upload_interval_seconds": "*integer*",
    "max_upload_records": "*integer*",
    "name": "*string*",
    "output_options": {
      "CVE-2021-44228": "*boolean*",
      "batch_prefix": "*string*",
      "batch_suffix": "*string*",
      "field_delimiter": "*string*",
      "field_names": [
        null
      ],
      "output_type": "*string*",
      "record_delimiter": "*string*",
      "record_prefix": "*string*",
      "record_suffix": "*string*",
      "record_template": "*string*",
      "sample_rate": "*number*",
      "timestamp_format": "*string*"
    }
  }
]
```

#### 4XX List Logpush jobs response failure.

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



## Update Logpush job

**PUT** `/accounts/{account_id}/logpush/jobs/{job_id}`

Updates a Logpush job.

### Responses

#### 200 Update Logpush job response.

> Data is at `body["result"]`

```json
{
  "dataset": "*string*",
  "destination_conf": "*string*",
  "enabled": "*boolean*",
  "error_message": "*string*",
  "frequency": "*string*",
  "id": "*integer*",
  "kind": "*string*",
  "last_complete": "*string*",
  "last_error": "*string*",
  "logpull_options": "*string*",
  "max_upload_bytes": "*integer*",
  "max_upload_interval_seconds": "*integer*",
  "max_upload_records": "*integer*",
  "name": "*string*",
  "output_options": {
    "CVE-2021-44228": "*boolean*",
    "batch_prefix": "*string*",
    "batch_suffix": "*string*",
    "field_delimiter": "*string*",
    "field_names": [
      "*string*"
    ],
    "output_type": "*string*",
    "record_delimiter": "*string*",
    "record_prefix": "*string*",
    "record_suffix": "*string*",
    "record_template": "*string*",
    "sample_rate": "*number*",
    "timestamp_format": "*string*"
  }
}
```

#### 4XX Update Logpush job response failure.

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



## Get Logpush job details

**GET** `/accounts/{account_id}/logpush/jobs/{job_id}`

Gets the details of a Logpush job.

### Responses

#### 200 Get Logpush job details response.

> Data is at `body["result"]`

```json
{
  "dataset": "*string*",
  "destination_conf": "*string*",
  "enabled": "*boolean*",
  "error_message": "*string*",
  "frequency": "*string*",
  "id": "*integer*",
  "kind": "*string*",
  "last_complete": "*string*",
  "last_error": "*string*",
  "logpull_options": "*string*",
  "max_upload_bytes": "*integer*",
  "max_upload_interval_seconds": "*integer*",
  "max_upload_records": "*integer*",
  "name": "*string*",
  "output_options": {
    "CVE-2021-44228": "*boolean*",
    "batch_prefix": "*string*",
    "batch_suffix": "*string*",
    "field_delimiter": "*string*",
    "field_names": [
      "*string*"
    ],
    "output_type": "*string*",
    "record_delimiter": "*string*",
    "record_prefix": "*string*",
    "record_suffix": "*string*",
    "record_template": "*string*",
    "sample_rate": "*number*",
    "timestamp_format": "*string*"
  }
}
```

#### 4XX Get Logpush job details response failure.

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



## Delete Logpush job

**DELETE** `/accounts/{account_id}/logpush/jobs/{job_id}`

Deletes a Logpush job.

### Responses

#### 200 Delete Logpush job response.

> Data is at `body["result"]`

```json
{
  "id": "*integer*"
}
```

#### 4XX Delete Logpush job response failure.

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



## Get ownership challenge

**POST** `/accounts/{account_id}/logpush/ownership`

Gets a new ownership challenge sent to your destination.

### Responses

#### 200 Get ownership challenge response.

> Data is at `body["result"]`

```json
{
  "filename": "*string*",
  "message": "*string*",
  "valid": "*boolean*"
}
```

#### 4XX Get ownership challenge response failure.

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



## Validate ownership challenge

**POST** `/accounts/{account_id}/logpush/ownership/validate`

Validates ownership challenge of the destination.

### Responses

#### 200 Validate ownership challenge response.

> Data is at `body["result"]`

```json
{
  "valid": "*boolean*"
}
```

#### 4XX Validate ownership challenge response failure.

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



## Validate destination

**POST** `/accounts/{account_id}/logpush/validate/destination`

Validates destination.

### Responses

#### 200 Validate destination response.

> Data is at `body["result"]`

```json
{
  "message": "*string*",
  "valid": "*boolean*"
}
```

#### 4XX Validate destination response failure.

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



## Check destination exists

**POST** `/accounts/{account_id}/logpush/validate/destination/exists`

Checks if there is an existing job with a destination.

### Responses

#### 200 Check destination exists response.

> Data is at `body["result"]`

```json
{
  "exists": "*boolean*"
}
```

#### 4XX Check destination exists response failure.

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



## Validate origin

**POST** `/accounts/{account_id}/logpush/validate/origin`

Validates logpull origin with logpull_options.

### Responses

#### 200 Validate origin response.

> Data is at `body["result"]`

```json
{
  "message": "*string*",
  "valid": "*boolean*"
}
```

#### 4XX Validate origin response failure.

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


