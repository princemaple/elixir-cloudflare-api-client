# Stream Watermark Profile

## Create watermark profiles via basic upload

**POST** `/accounts/{account_id}/stream/watermarks`

Creates watermark profiles using a single `HTTP POST multipart/form-data` request.

### Responses

#### 200 Create watermark profiles via basic upload response.

> Data is at `body["result"]`

```json
{
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
```

#### 4XX Create watermark profiles via basic upload response failure.

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



## List watermark profiles

**GET** `/accounts/{account_id}/stream/watermarks`

Lists all watermark profiles for an account.

### Responses

#### 200 List watermark profiles response.

> Data is at `body["result"]`

```json
[
  {
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
]
```

#### 4XX List watermark profiles response failure.

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



## Watermark profile details

**GET** `/accounts/{account_id}/stream/watermarks/{identifier}`

Retrieves details for a single watermark profile.

### Responses

#### 200 Watermark profile details response.

> Data is at `body["result"]`

```json
{
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
```

#### 4XX Watermark profile details response failure.

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



## Delete watermark profiles

**DELETE** `/accounts/{account_id}/stream/watermarks/{identifier}`

Deletes a watermark profile.

### Responses

#### 200 Delete watermark profiles response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete watermark profiles response failure.

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


