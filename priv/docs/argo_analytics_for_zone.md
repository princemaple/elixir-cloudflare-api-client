# Argo Analytics for Zone

## Argo Analytics for a zone

**GET** `/zones/{zone_id}/analytics/latency`



### Responses

#### 200 Argo Analytics for a zone response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Argo Analytics for a zone response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


