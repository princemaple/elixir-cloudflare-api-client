# Stream Videos

## Initiate video uploads using TUS

**POST** `/accounts/{account_id}/stream`

Initiates a video upload using the TUS protocol. On success, the server responds with a status code 201 (created) and includes a `location` header to indicate where the content should be uploaded. Refer to https://tus.io for protocol details.

### Responses

#### 200 Initiate video uploads using TUS response.

> Data is at `body["result"]`

```json

```

#### 4XX Initiate video uploads using TUS response failure.

```json

```



## List videos

**GET** `/accounts/{account_id}/stream`

Lists up to 1000 videos from a single request. For a specific range, refer to the optional parameters.

### Responses

#### 200 List videos response.

> Data is at `body["result"]`

```json
[
  {
    "allowedOrigins": [
      "*string*"
    ],
    "created": "*string*",
    "creator": "*string*",
    "duration": "*number*",
    "input": {
      "height": "*integer*",
      "width": "*integer*"
    },
    "liveInput": "*string*",
    "maxDurationSeconds": "*integer*",
    "meta": {},
    "modified": "*string*",
    "playback": {
      "dash": "*string*",
      "hls": "*string*"
    },
    "preview": "*string*",
    "readyToStream": "*boolean*",
    "readyToStreamAt": "*string*",
    "requireSignedURLs": "*boolean*",
    "scheduledDeletion": "*string*",
    "size": "*number*",
    "status": null,
    "thumbnail": "*string*",
    "thumbnailTimestampPct": "*number*",
    "uid": "*string*",
    "uploadExpiry": "*string*",
    "uploaded": "*string*",
    "watermark": {
      "created": null,
      "downloadedFrom": null,
      "height": null,
      "name": null,
      "opacity": null,
      "padding": null,
      "position": null,
      "scale": null,
      "size": null,
      "uid": null,
      "width": null
    }
  }
]
```

#### 4XX List videos response failure.

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



## Upload videos from a URL

**POST** `/accounts/{account_id}/stream/copy`

Uploads a video to Stream from a provided URL.

### Responses

#### 200 Upload videos from a URL response.

> Data is at `body["result"]`

```json
{
  "allowedOrigins": [
    "*string*"
  ],
  "created": "*string*",
  "creator": "*string*",
  "duration": "*number*",
  "input": {
    "height": "*integer*",
    "width": "*integer*"
  },
  "liveInput": "*string*",
  "maxDurationSeconds": "*integer*",
  "meta": {},
  "modified": "*string*",
  "playback": {
    "dash": "*string*",
    "hls": "*string*"
  },
  "preview": "*string*",
  "readyToStream": "*boolean*",
  "readyToStreamAt": "*string*",
  "requireSignedURLs": "*boolean*",
  "scheduledDeletion": "*string*",
  "size": "*number*",
  "status": null,
  "thumbnail": "*string*",
  "thumbnailTimestampPct": "*number*",
  "uid": "*string*",
  "uploadExpiry": "*string*",
  "uploaded": "*string*",
  "watermark": {
    "created": "*string*",
    "downloadedFrom": "*string*",
    "height": "*integer*",
    "name": "*string*",
    "opacity": "*number*",
    "padding": "*number*",
    "position": "*string*",
    "scale": "*number*",
    "size": "*number*",
    "uid": "*string*",
    "width": "*integer*"
  }
}
```

#### 4XX Upload videos from a URL response failure.

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



## Upload videos via direct upload URLs

**POST** `/accounts/{account_id}/stream/direct_upload`

Creates a direct upload that allows video uploads without an API key.

### Responses

#### 200 Upload videos via direct upload URLs response.

> Data is at `body["result"]`

```json
{
  "scheduledDeletion": "*string*",
  "uid": "*string*",
  "uploadURL": "*string*",
  "watermark": {
    "created": "*string*",
    "downloadedFrom": "*string*",
    "height": "*integer*",
    "name": "*string*",
    "opacity": "*number*",
    "padding": "*number*",
    "position": "*string*",
    "scale": "*number*",
    "size": "*number*",
    "uid": "*string*",
    "width": "*integer*"
  }
}
```

#### 4XX Upload videos via direct upload URLs response failure.

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



## Storage use

**GET** `/accounts/{account_id}/stream/storage-usage`

Returns information about an account's storage use.

### Responses

#### 200 Returns information about an account's storage use response.

> Data is at `body["result"]`

```json
{
  "creator": "*string*",
  "totalStorageMinutes": "*integer*",
  "totalStorageMinutesLimit": "*integer*",
  "videoCount": "*integer*"
}
```

#### 4XX Returns information about an account's storage use response failure.

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



## Edit video details

**POST** `/accounts/{account_id}/stream/{identifier}`

Edit details for a single video.

### Responses

#### 200 Edit video details response.

> Data is at `body["result"]`

```json
{
  "allowedOrigins": [
    "*string*"
  ],
  "created": "*string*",
  "creator": "*string*",
  "duration": "*number*",
  "input": {
    "height": "*integer*",
    "width": "*integer*"
  },
  "liveInput": "*string*",
  "maxDurationSeconds": "*integer*",
  "meta": {},
  "modified": "*string*",
  "playback": {
    "dash": "*string*",
    "hls": "*string*"
  },
  "preview": "*string*",
  "readyToStream": "*boolean*",
  "readyToStreamAt": "*string*",
  "requireSignedURLs": "*boolean*",
  "scheduledDeletion": "*string*",
  "size": "*number*",
  "status": null,
  "thumbnail": "*string*",
  "thumbnailTimestampPct": "*number*",
  "uid": "*string*",
  "uploadExpiry": "*string*",
  "uploaded": "*string*",
  "watermark": {
    "created": "*string*",
    "downloadedFrom": "*string*",
    "height": "*integer*",
    "name": "*string*",
    "opacity": "*number*",
    "padding": "*number*",
    "position": "*string*",
    "scale": "*number*",
    "size": "*number*",
    "uid": "*string*",
    "width": "*integer*"
  }
}
```

#### 4XX Edit video details response failure.

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



## Retrieve video details

**GET** `/accounts/{account_id}/stream/{identifier}`

Fetches details for a single video.

### Responses

#### 200 Retrieve video details response.

> Data is at `body["result"]`

```json
{
  "allowedOrigins": [
    "*string*"
  ],
  "created": "*string*",
  "creator": "*string*",
  "duration": "*number*",
  "input": {
    "height": "*integer*",
    "width": "*integer*"
  },
  "liveInput": "*string*",
  "maxDurationSeconds": "*integer*",
  "meta": {},
  "modified": "*string*",
  "playback": {
    "dash": "*string*",
    "hls": "*string*"
  },
  "preview": "*string*",
  "readyToStream": "*boolean*",
  "readyToStreamAt": "*string*",
  "requireSignedURLs": "*boolean*",
  "scheduledDeletion": "*string*",
  "size": "*number*",
  "status": null,
  "thumbnail": "*string*",
  "thumbnailTimestampPct": "*number*",
  "uid": "*string*",
  "uploadExpiry": "*string*",
  "uploaded": "*string*",
  "watermark": {
    "created": "*string*",
    "downloadedFrom": "*string*",
    "height": "*integer*",
    "name": "*string*",
    "opacity": "*number*",
    "padding": "*number*",
    "position": "*string*",
    "scale": "*number*",
    "size": "*number*",
    "uid": "*string*",
    "width": "*integer*"
  }
}
```

#### 4XX Retrieve video details response failure.

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



## Delete video

**DELETE** `/accounts/{account_id}/stream/{identifier}`

Deletes a video and its copies from Cloudflare Stream.

### Responses

#### 200 Delete video response.

> Data is at `body["result"]`

```json

```

#### 4XX Delete video response failure.

```json

```



## Retrieve embed Code HTML

**GET** `/accounts/{account_id}/stream/{identifier}/embed`

Fetches an HTML code snippet to embed a video in a web page delivered through Cloudflare. On success, returns an HTML fragment for use on web pages to display a video. On failure, returns a JSON response body.

### Responses

#### 200 Retreieve embed Code HTML response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Retreieve embed Code HTML response failure.

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



## Create signed URL tokens for videos

**POST** `/accounts/{account_id}/stream/{identifier}/token`

Creates a signed URL token for a video. If a body is not provided in the request, a token is created with default values.

### Responses

#### 200 Create signed URL tokens for videos response.

> Data is at `body["result"]`

```json
{
  "token": "*string*"
}
```

#### 4XX Create signed URL tokens for videos response failure.

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


