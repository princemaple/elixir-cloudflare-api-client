# Values

## List values

**POST** `/telemetry/values`

List unique values found in your events.

### Responses

#### 200 Successful request

> Data is at `body["result"]`

```json
[
  {
    "dataset": "*string*",
    "key": "*string*",
    "type": "*string*",
    "value": null
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


