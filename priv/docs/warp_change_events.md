# WARP Change Events

## List WARP change events.

**GET** `/accounts/{account_id}/dex/warp-change-events`

List WARP configuration and enablement toggle change events by device.

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List WARP change events failure response

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


