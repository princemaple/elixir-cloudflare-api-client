# DNS Records for an Account

## Get DNS Record Usage for Account

**GET** `/accounts/{account_id}/dns_records/usage`

Get the current DNS record usage and quota for an account. May include internal DNS usage and quota.

### Responses

#### 200 Get DNS Record Usage response

> Data is at `body["result"]`

```json
{
  "internal_record_quota": "*integer*",
  "internal_record_usage": "*integer*",
  "record_quota": "*integer*",
  "record_usage": "*integer*"
}
```

#### 4XX Get DNS Record Usage response failure

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


