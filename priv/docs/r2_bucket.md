# R2 Bucket

## List Event Notification Rules

**GET** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration`

List all event notification rules for a bucket.

### Responses

#### 200 Read Configuration response.

> Data is at `body["result"]`

```json
{
  "bucketName": "*string*",
  "queues": [
    {
      "queueId": "*string*",
      "queueName": "*string*",
      "rules": [
        null
      ]
    }
  ]
}
```

#### 404 No Configuration Found response.

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
  "result": {},
  "success": "*boolean*"
}
```

#### 4XX Read Configuration failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Create Event Notification Rule

**PUT** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`

Create event notification rule.

### Responses

#### 200 Create Configuration response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Create Configuration failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Event Notification Rule

**GET** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`

Get a single event notification rule.

### Responses

#### 200 Read Configuration response.

> Data is at `body["result"]`

```json
{
  "queueId": "*string*",
  "queueName": "*string*",
  "rules": [
    {
      "actions": [
        null
      ],
      "createdAt": "*string*",
      "description": "*string*",
      "prefix": "*string*",
      "ruleId": "*string*",
      "suffix": "*string*"
    }
  ]
}
```

#### 404 No Configuration Found response.

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
  "result": {},
  "success": "*boolean*"
}
```

#### 4XX Read Configuration failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Delete Event Notification Rules

**DELETE** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`

Delete an event notification rule. **If no body is provided, all rules for specified queue will be deleted**.

### Responses

#### 200 Delete Configuration response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete Configuration failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Create Bucket

**POST** `/accounts/{account_id}/r2/buckets`

Creates a new R2 bucket.

### Responses

#### 200 Create Bucket response.

> Data is at `body["result"]`

```json
{
  "creation_date": "*string*",
  "jurisdiction": "*string*",
  "location": "*string*",
  "name": "*string*",
  "storage_class": "*string*"
}
```

#### 4XX Create Bucket response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## List Buckets

**GET** `/accounts/{account_id}/r2/buckets`

Lists all R2 buckets on your account.

### Responses

#### 200 List Buckets response.

> Data is at `body["result"]`

```json
{
  "buckets": [
    {
      "creation_date": "*string*",
      "jurisdiction": "*string*",
      "location": "*string*",
      "name": "*string*",
      "storage_class": "*string*"
    }
  ]
}
```

#### 4XX List Buckets response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Patch Bucket

**PATCH** `/accounts/{account_id}/r2/buckets/{bucket_name}`

Updates properties of an existing R2 bucket.

### Responses

#### 200 Patch Bucket response.

> Data is at `body["result"]`

```json
{
  "creation_date": "*string*",
  "jurisdiction": "*string*",
  "location": "*string*",
  "name": "*string*",
  "storage_class": "*string*"
}
```

#### 4XX Get Bucket response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Bucket

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}`

Gets properties of an existing R2 bucket.

### Responses

#### 200 Get Bucket response.

> Data is at `body["result"]`

```json
{
  "creation_date": "*string*",
  "jurisdiction": "*string*",
  "location": "*string*",
  "name": "*string*",
  "storage_class": "*string*"
}
```

#### 4XX Get Bucket response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Delete Bucket

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}`

Deletes an existing R2 bucket.

### Responses

#### 200 Delete Bucket response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete Bucket response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Put Bucket CORS Policy

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/cors`

Set the CORS policy for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Bucket CORS Policy

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/cors`

Get the CORS policy for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{
  "rules": [
    {
      "allowed": {
        "headers": [
          null
        ],
        "methods": [
          null
        ],
        "origins": [
          null
        ]
      },
      "exposeHeaders": [
        "*string*"
      ],
      "id": "*string*",
      "maxAgeSeconds": "*number*"
    }
  ]
}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Delete Bucket CORS Policy

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}/cors`

Delete the CORS policy for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Attach Custom Domain To Bucket

**POST** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom`

Register a new custom domain for an existing R2 bucket.

### Responses

#### 200 Add Custom Domain response.

> Data is at `body["result"]`

```json
{
  "ciphers": [
    "*string*"
  ],
  "domain": "*string*",
  "enabled": "*boolean*",
  "minTLS": "*string*"
}
```

#### 4XX Add Custom Domain response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## List Custom Domains of Bucket

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom`

Gets a list of all custom domains registered with an existing R2 bucket.

### Responses

#### 200 List Custom Domains response.

> Data is at `body["result"]`

```json
{
  "domains": [
    {
      "ciphers": [
        "*string*"
      ],
      "domain": "*string*",
      "enabled": "*boolean*",
      "minTLS": "*string*",
      "status": {
        "ownership": "*string*",
        "ssl": "*string*"
      },
      "zoneId": "*string*",
      "zoneName": "*string*"
    }
  ]
}
```

#### 4XX List Custom Domains response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Configure Custom Domain Settings

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`

Edit the configuration for a custom domain on an existing R2 bucket.

### Responses

#### 200 Edit Custom Domain Configuration response.

> Data is at `body["result"]`

```json
{
  "ciphers": [
    "*string*"
  ],
  "domain": "*string*",
  "enabled": "*boolean*",
  "minTLS": "*string*"
}
```

#### 4XX Edit Custom Domain Configuration response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Custom Domain Settings

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`

Get the configuration for a custom domain on an existing R2 bucket.

### Responses

#### 200 Get Custom Domain Configuration response.

> Data is at `body["result"]`

```json
{
  "ciphers": [
    "*string*"
  ],
  "domain": "*string*",
  "enabled": "*boolean*",
  "minTLS": "*string*",
  "status": {
    "ownership": "*string*",
    "ssl": "*string*"
  },
  "zoneId": "*string*",
  "zoneName": "*string*"
}
```

#### 4XX Get Custom Domain Configuration response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Remove Custom Domain From Bucket

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`

Remove custom domain registration from an existing R2 bucket.

### Responses

#### 200 Delete Custom Domain response.

> Data is at `body["result"]`

```json
{
  "domain": "*string*"
}
```

#### 4XX Delete Custom Domain response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Update r2.dev Domain of Bucket

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/managed`

Updates state of public access over the bucket's R2-managed (r2.dev) domain.

### Responses

#### 200 Update Managed Subdomain response.

> Data is at `body["result"]`

```json
{
  "bucketId": "*string*",
  "domain": "*string*",
  "enabled": "*boolean*"
}
```

#### 4XX Update Managed Subdomain response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get r2.dev Domain of Bucket

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/managed`

Gets state of public access over the bucket's R2-managed (r2.dev) domain.

### Responses

#### 200 Get Managed Subdomain response.

> Data is at `body["result"]`

```json
{
  "bucketId": "*string*",
  "domain": "*string*",
  "enabled": "*boolean*"
}
```

#### 4XX Get Managed Subdomain response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Put Object Lifecycle Rules

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/lifecycle`

Set the object lifecycle rules for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Object Lifecycle Rules

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/lifecycle`

Get object lifecycle rules for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{
  "rules": [
    {
      "abortMultipartUploadsTransition": {
        "condition": null
      },
      "conditions": {
        "prefix": "*string*"
      },
      "deleteObjectsTransition": {
        "condition": null
      },
      "enabled": "*boolean*",
      "id": "*string*",
      "storageClassTransitions": [
        null
      ]
    }
  ]
}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Put Local Uploads Configuration

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/local-uploads`

Set the local uploads configuration for a bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Local Uploads Configuration

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/local-uploads`

Get the local uploads configuration for a bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Put Bucket Lock Rules

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/lock`

Set lock rules for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Bucket Lock Rules

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/lock`

Get lock rules for a bucket.

### Responses

#### 200 Success Response.

> Data is at `body["result"]`

```json
{
  "rules": [
    {
      "condition": null,
      "enabled": "*boolean*",
      "id": "*string*",
      "prefix": "*string*"
    }
  ]
}
```

#### 4XX Error Response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Enable Sippy

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/sippy`

Sets configuration for Sippy for an existing R2 bucket.

### Responses

#### 200 Set Sippy Configuration response.

> Data is at `body["result"]`

```json
{
  "destination": {
    "accessKeyId": "*string*",
    "account": "*string*",
    "bucket": "*string*",
    "provider": "*string*"
  },
  "enabled": "*boolean*",
  "source": {
    "bucket": "*string*",
    "bucketUrl": "*string*",
    "provider": "*string*",
    "region": "*string*"
  }
}
```

#### 4XX Get Sippy Configuration response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Sippy Configuration

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/sippy`

Gets configuration for Sippy for an existing R2 bucket.

### Responses

#### 200 Get Sippy Configuration response.

> Data is at `body["result"]`

```json
{
  "destination": {
    "accessKeyId": "*string*",
    "account": "*string*",
    "bucket": "*string*",
    "provider": "*string*"
  },
  "enabled": "*boolean*",
  "source": {
    "bucket": "*string*",
    "bucketUrl": "*string*",
    "provider": "*string*",
    "region": "*string*"
  }
}
```

#### 4XX Get Sippy Configuration response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Disable Sippy

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}/sippy`

Disables Sippy on this bucket.

### Responses

#### 200 Delete Sippy Configuration response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Delete Sippy Configuration response failure.

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
  "result": {},
  "success": "*boolean*"
}
```



## Create Temporary Access Credentials

**POST** `/accounts/{account_id}/r2/temp-access-credentials`

Creates temporary access credentials on a bucket that can be optionally scoped to prefixes or objects.

### Responses

#### 200 Create temporary access credentials response.

> Data is at `body["result"]`

```json
{
  "accessKeyId": "*string*",
  "secretAccessKey": "*string*",
  "sessionToken": "*string*"
}
```

#### 4XX Create temporary access credentials response failure.

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
  "result": {},
  "success": "*boolean*"
}
```


