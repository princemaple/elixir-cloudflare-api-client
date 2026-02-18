# R2 Account

## Get Account-Level Metrics

**GET** `/accounts/{account_id}/r2/metrics`

Get Storage/Object Count Metrics across all buckets in your account. Note that Account-Level Metrics may not immediately reflect the latest data.

### Responses

#### 200 Get Account-Level Metrics response.

> Data is at `body["result"]`

```json
{
  "infrequentAccess": {
    "published": {
      "metadataSize": "*number*",
      "objects": "*number*",
      "payloadSize": "*number*"
    },
    "uploaded": {
      "metadataSize": "*number*",
      "objects": "*number*",
      "payloadSize": "*number*"
    }
  },
  "standard": {
    "published": {
      "metadataSize": "*number*",
      "objects": "*number*",
      "payloadSize": "*number*"
    },
    "uploaded": {
      "metadataSize": "*number*",
      "objects": "*number*",
      "payloadSize": "*number*"
    }
  }
}
```

#### 4XX Get Account-Level Metrics response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```


