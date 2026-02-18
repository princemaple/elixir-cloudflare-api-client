# Stream Audio Tracks

## List additional audio tracks on a video

**GET** `/accounts/{account_id}/stream/{identifier}/audio`

Lists additional audio tracks on a video. Note this API will not return information for audio attached to the video upload.

### Responses

#### 200 Lists additional audio tracks on a video.

> Data is at `body["result"]`

```json
[
  {
    "default": "*boolean*",
    "label": "*string*",
    "status": "*string*",
    "uid": "*string*"
  }
]
```

#### 4XX Lists additional audio tracks on a video response failure.

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



## Add audio tracks to a video

**POST** `/accounts/{account_id}/stream/{identifier}/audio/copy`

Adds an additional audio track to a video using the provided audio track URL.

### Responses

#### 200 Add audio tracks to a video.

> Data is at `body["result"]`

```json
{
  "default": "*boolean*",
  "label": "*string*",
  "status": "*string*",
  "uid": "*string*"
}
```

#### 4XX Add audio tracks to a video response failure.

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



## Edit additional audio tracks on a video

**PATCH** `/accounts/{account_id}/stream/{identifier}/audio/{audio_identifier}`

Edits additional audio tracks on a video. Editing the default status of an audio track to `true` will mark all other audio tracks on the video default status to `false`.

### Responses

#### 200 Edits additional audio tracks on a video.

> Data is at `body["result"]`

```json
{
  "default": "*boolean*",
  "label": "*string*",
  "status": "*string*",
  "uid": "*string*"
}
```

#### 4XX Edits additional audio tracks on a video response failure.

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



## Delete additional audio tracks on a video

**DELETE** `/accounts/{account_id}/stream/{identifier}/audio/{audio_identifier}`

Deletes additional audio tracks on a video. Deleting a default audio track is not allowed. You must assign another audio track as default prior to deletion.

### Responses

#### 200 Deletes additional audio tracks on a video.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Deletes additional audio tracks on a video response failure.

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
  "result": "*string*",
  "success": "*boolean*"
}
```


