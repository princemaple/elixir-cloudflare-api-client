# Stream Video Clipping

## Clip videos given a start and end time

**POST** `/accounts/{account_id}/stream/clip`

Clips a video based on the specified start and end times provided in seconds.

### Responses

#### 200 Clip videos given a start and end time response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Clip videos given a start and end time response failure.

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


