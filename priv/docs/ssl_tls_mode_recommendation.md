# SSL/TLS Mode Recommendation

## SSL/TLS Recommendation

**GET** `/zones/{zone_id}/ssl/recommendation`

Retrieve the SSL/TLS Recommender's recommendation for a zone.

### Responses

#### 200 SSL/TLS Recommendation response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "next_scheduled_scan": "*string*",
  "value": "*string*"
}
```

#### 4XX SSL/TLS Recommendation response failure.

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
  "result": {
    "editable": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "next_scheduled_scan": "*string*",
    "value": "*string*"
  },
  "success": "*boolean*"
}
```


