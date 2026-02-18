# Notification Alert Types

## Get Alert Types

**GET** `/accounts/{account_id}/alerting/v3/available_alerts`

Gets a list of all alert types for which an account is eligible.

### Responses

#### 200 Get Alert Types response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get Alert Types response failure

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


