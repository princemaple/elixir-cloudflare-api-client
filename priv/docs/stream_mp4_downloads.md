# Stream MP4 Downloads

## Create downloads

**POST** `/accounts/{account_id}/stream/{identifier}/downloads`

Creates a download for a video when a video is ready to view. Use `/downloads/{download_type}` instead for type-specific downloads. Available types are `default` and `audio`.

### Responses

#### 200 Create downloads response.

> Data is at `body["result"]`

```json
{
  "percentComplete": "*number*",
  "status": "*string*",
  "url": "*string*"
}
```

#### 4XX Create downloads response failure.

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



## List downloads

**GET** `/accounts/{account_id}/stream/{identifier}/downloads`

Lists the downloads created for a video.

### Responses

#### 200 List downloads response.

> Data is at `body["result"]`

```json
{
  "audio": {
    "percentComplete": "*number*",
    "status": "*string*",
    "url": "*string*"
  },
  "default": {
    "percentComplete": "*number*",
    "status": "*string*",
    "url": "*string*"
  }
}
```

#### 4XX List downloads response failure.

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



## Delete downloads

**DELETE** `/accounts/{account_id}/stream/{identifier}/downloads`

Delete the downloads for a video. Use `/downloads/{download_type}` instead for type-specific downloads. Available types are `default` and `audio`.

### Responses

#### 200 Delete downloads response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete downloads response failure.

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



## Create download

**POST** `/accounts/{account_id}/stream/{identifier}/downloads/{download_type}`

Creates a download for a video of specified type. For backwards-compatibility, POST requests to /downloads will enable the default download.

### Responses

#### 200 Create download of specified type response.

> Data is at `body["result"]`

```json
{
  "audio": {
    "percentComplete": "*number*",
    "status": "*string*",
    "url": "*string*"
  },
  "default": {
    "percentComplete": "*number*",
    "status": "*string*",
    "url": "*string*"
  }
}
```

#### 4XX Create downloads of specified type response failure.

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



## Delete download

**DELETE** `/accounts/{account_id}/stream/{identifier}/downloads/{download_type}`

Delete specific type of download. For backwards-compatibility, DELETE requests to /downloads will delete the default download.

### Responses

#### 200 Delete downloads response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete downloads response failure.

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


