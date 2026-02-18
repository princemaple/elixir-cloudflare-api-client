# Keys

## List keys

**POST** `/telemetry/keys`

List all the keys in your telemetry events.

### Responses

#### 200 Successful request

> Data is at `body["result"]`

```json
[
  {
    "key": "*string*",
    "lastSeenAt": "*number*",
    "type": "*string*"
  }
]
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal error

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


