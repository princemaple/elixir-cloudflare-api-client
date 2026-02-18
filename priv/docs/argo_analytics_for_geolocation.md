# Argo Analytics for Geolocation

## Argo Analytics for a zone at different PoPs

**GET** `/zones/{zone_id}/analytics/latency/colos`



### Responses

#### 200 Argo Analytics for a zone at different PoPs response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Argo Analytics for a zone at different PoPs response failure

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


