# Stream Signing Keys

## Create signing keys

**POST** `/accounts/{account_id}/stream/keys`

Creates an RSA private key in PEM and JWK formats. Key files are only displayed once after creation. Keys are created, used, and deleted independently of videos, and every key can sign any video.

### Responses

#### 200 Create signing keys response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "id": "*string*",
  "jwk": "*string*",
  "pem": "*string*"
}
```

#### 4XX Create signing keys response failure.

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



## List signing keys

**GET** `/accounts/{account_id}/stream/keys`

Lists the video ID and creation date and time when a signing key was created.

### Responses

#### 200 List signing keys response.

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "id": "*string*"
  }
]
```

#### 4XX List signing keys response failure.

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



## Delete signing keys

**DELETE** `/accounts/{account_id}/stream/keys/{identifier}`

Deletes signing keys and revokes all signed URLs generated with the key.

### Responses

#### 200 Delete signing keys response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete signing keys response failure.

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


