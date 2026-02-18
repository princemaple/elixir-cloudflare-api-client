# Stream Subtitles/Captions

## List captions or subtitles

**GET** `/accounts/{account_id}/stream/{identifier}/captions`

Lists the available captions or subtitles for a specific video.

### Responses

#### 200 List captions or subtitles response.

> Data is at `body["result"]`

```json
[
  {
    "generated": "*boolean*",
    "label": "*string*",
    "language": "*string*",
    "status": "*string*"
  }
]
```

#### 4XX List captions or subtitles response failure.

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



## Upload captions or subtitles

**PUT** `/accounts/{account_id}/stream/{identifier}/captions/{language}`

Uploads the caption or subtitle file to the endpoint for a specific BCP47 language. One caption or subtitle file per language is allowed.

### Responses

#### 200 Upload captions or subtitles response.

> Data is at `body["result"]`

```json
{
  "generated": "*boolean*",
  "label": "*string*",
  "language": "*string*",
  "status": "*string*"
}
```

#### 4XX Upload captions or subtitles response failure.

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



## List captions or subtitles for a provided language

**GET** `/accounts/{account_id}/stream/{identifier}/captions/{language}`

Lists the captions or subtitles for provided language.

### Responses

#### 200 List captions or subtitles response for a provided language.

> Data is at `body["result"]`

```json
{
  "generated": "*boolean*",
  "label": "*string*",
  "language": "*string*",
  "status": "*string*"
}
```

#### 4XX List captions or subtitles response for a provided language.

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



## Delete captions or subtitles

**DELETE** `/accounts/{account_id}/stream/{identifier}/captions/{language}`

Removes the captions or subtitles from a video.

### Responses

#### 200 Delete captions or subtitles response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete captions or subtitles response failure.

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



## Generate captions or subtitles for a provided language via AI

**POST** `/accounts/{account_id}/stream/{identifier}/captions/{language}/generate`

Generate captions or subtitles for provided language via AI.

### Responses

#### 200 Generate captions or subtitles response for a provided language.

> Data is at `body["result"]`

```json
{
  "generated": "*boolean*",
  "label": "*string*",
  "language": "*string*",
  "status": "*string*"
}
```

#### 4XX Generate captions or subtitles response for a provided language.

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



## Return WebVTT captions for a provided language

**GET** `/accounts/{account_id}/stream/{identifier}/captions/{language}/vtt`

Return WebVTT captions for a provided language.

### Responses

#### 200 Return WebVTT caption or subtitle response.

> Data is at `body["result"]`

```json

```

#### 4XX Return WebVTT caption or subtitle response failure.

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


