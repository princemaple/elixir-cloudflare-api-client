# Notification Mechanism Eligibility

## Get delivery mechanism eligibility

**GET** `/accounts/{account_id}/alerting/v3/destinations/eligible`

Get a list of all delivery mechanism types for which an account is eligible.

### Responses

#### 200 Get delivery mechanism eligibility response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get delivery mechanism eligibility response failure

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
  "success": "*boolean*"
}
```


