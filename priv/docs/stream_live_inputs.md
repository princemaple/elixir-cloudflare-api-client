# Stream Live Inputs

## Create a live input

**POST** `/accounts/{account_id}/stream/live_inputs`

Creates a live input, and returns credentials that you or your users can use to stream live video to Cloudflare Stream.

### Responses

#### 200 Create a live input response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "deleteRecordingAfterDays": "*number*",
  "enabled": "*boolean*",
  "meta": {},
  "modified": "*string*",
  "recording": {
    "allowedOrigins": [
      "*string*"
    ],
    "hideLiveViewerCount": "*boolean*",
    "mode": "*string*",
    "requireSignedURLs": "*boolean*",
    "timeoutSeconds": "*integer*"
  },
  "rtmps": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "rtmpsPlayback": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "srt": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "srtPlayback": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "status": "*string*",
  "uid": "*string*",
  "webRTC": {
    "url": "*string*"
  },
  "webRTCPlayback": {
    "url": "*string*"
  }
}
```

#### 4XX Create a live input response failure.

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



## List live inputs

**GET** `/accounts/{account_id}/stream/live_inputs`

Lists the live inputs created for an account. To get the credentials needed to stream to a specific live input, request a single live input.

### Responses

#### 200 List live inputs response.

> Data is at `body["result"]`

```json
{
  "liveInputs": [
    null
  ],
  "range": "*integer*",
  "total": "*integer*"
}
```

#### 4XX List live inputs response failure.

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



## Update a live input

**PUT** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}`

Updates a specified live input.

### Responses

#### 200 Update a live input response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "deleteRecordingAfterDays": "*number*",
  "enabled": "*boolean*",
  "meta": {},
  "modified": "*string*",
  "recording": {
    "allowedOrigins": [
      "*string*"
    ],
    "hideLiveViewerCount": "*boolean*",
    "mode": "*string*",
    "requireSignedURLs": "*boolean*",
    "timeoutSeconds": "*integer*"
  },
  "rtmps": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "rtmpsPlayback": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "srt": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "srtPlayback": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "status": "*string*",
  "uid": "*string*",
  "webRTC": {
    "url": "*string*"
  },
  "webRTCPlayback": {
    "url": "*string*"
  }
}
```

#### 4XX Update a live input response failure.

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



## Retrieve a live input

**GET** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}`

Retrieves details of an existing live input.

### Responses

#### 200 Retrieve a live input response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "deleteRecordingAfterDays": "*number*",
  "enabled": "*boolean*",
  "meta": {},
  "modified": "*string*",
  "recording": {
    "allowedOrigins": [
      "*string*"
    ],
    "hideLiveViewerCount": "*boolean*",
    "mode": "*string*",
    "requireSignedURLs": "*boolean*",
    "timeoutSeconds": "*integer*"
  },
  "rtmps": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "rtmpsPlayback": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "srt": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "srtPlayback": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "status": "*string*",
  "uid": "*string*",
  "webRTC": {
    "url": "*string*"
  },
  "webRTCPlayback": {
    "url": "*string*"
  }
}
```

#### 4XX Retrieve a live input response failure.

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



## Delete a live input

**DELETE** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}`

Prevents a live input from being streamed to and makes the live input inaccessible to any future API calls.

### Responses

#### 200 Delete a live input response.

> Data is at `body["result"]`

```json

```

#### 4XX Delete a live input response failure.

```json

```



## Disable a live input

**POST** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/disable`

Prevents a live input from being streamed to and makes the live input inaccessible to any future API calls until enabled.

### Responses

#### 200 Disable a live input response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "deleteRecordingAfterDays": "*number*",
  "enabled": "*boolean*",
  "meta": {},
  "modified": "*string*",
  "recording": {
    "allowedOrigins": [
      "*string*"
    ],
    "hideLiveViewerCount": "*boolean*",
    "mode": "*string*",
    "requireSignedURLs": "*boolean*",
    "timeoutSeconds": "*integer*"
  },
  "rtmps": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "rtmpsPlayback": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "srt": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "srtPlayback": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "status": "*string*",
  "uid": "*string*",
  "webRTC": {
    "url": "*string*"
  },
  "webRTCPlayback": {
    "url": "*string*"
  }
}
```

#### 4XX Disable a live input response failure.

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



## Enable a live input

**POST** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/enable`

Allows a live input to be streamed to and makes the live input accessible to any future API calls.

### Responses

#### 200 Enable a live input response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "deleteRecordingAfterDays": "*number*",
  "enabled": "*boolean*",
  "meta": {},
  "modified": "*string*",
  "recording": {
    "allowedOrigins": [
      "*string*"
    ],
    "hideLiveViewerCount": "*boolean*",
    "mode": "*string*",
    "requireSignedURLs": "*boolean*",
    "timeoutSeconds": "*integer*"
  },
  "rtmps": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "rtmpsPlayback": {
    "streamKey": "*string*",
    "url": "*string*"
  },
  "srt": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "srtPlayback": {
    "passphrase": "*string*",
    "streamId": "*string*",
    "url": "*string*"
  },
  "status": "*string*",
  "uid": "*string*",
  "webRTC": {
    "url": "*string*"
  },
  "webRTCPlayback": {
    "url": "*string*"
  }
}
```

#### 4XX Enable a live input response failure.

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



## Create a new output, connected to a live input

**POST** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs`

Creates a new output that can be used to simulcast or restream live video to other RTMP or SRT destinations. Outputs are always linked to a specific live input — one live input can have many outputs.

### Responses

#### 200 Create a new output, connected to a live input response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create a new output, connected to a live input response failure.

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



## List all outputs associated with a specified live input

**GET** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs`

Retrieves all outputs associated with a specified live input.

### Responses

#### 200 List all outputs associated with a specified live input response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List all outputs associated with a specified live input response failure.

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



## Update an output

**PUT** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs/{output_identifier}`

Updates the state of an output.

### Responses

#### 200 Update an output response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update an output response failure.

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



## Delete an output

**DELETE** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs/{output_identifier}`

Deletes an output and removes it from the associated live input.

### Responses

#### 200 Delete an output response.

> Data is at `body["result"]`

```json

```

#### 4XX Delete an output response failure.

```json

```


