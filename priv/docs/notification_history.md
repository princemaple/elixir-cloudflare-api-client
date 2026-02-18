# Notification History

## List History

**GET** `/accounts/{account_id}/alerting/v3/history`

Gets a list of history records for notifications sent to an account. The records are displayed for last `x` number of days based on the zone plan (free = 30, pro = 30, biz = 30, ent = 90).

### Responses

#### 200 List History response

> Data is at `body["result"]`

```json
[
  {
    "alert_body": "*string*",
    "alert_type": "*string*",
    "description": "*string*",
    "id": "*string*",
    "mechanism": "*string*",
    "mechanism_type": "*string*",
    "name": "*string*",
    "policy_id": "*string*",
    "sent": "*string*"
  }
]
```

#### 4XX List History response failure

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
  "result": [
    {
      "alert_body": "*string*",
      "alert_type": "*string*",
      "description": "*string*",
      "id": "*string*",
      "mechanism": "*string*",
      "mechanism_type": "*string*",
      "name": "*string*",
      "policy_id": "*string*",
      "sent": "*string*"
    }
  ],
  "result_info": {},
  "success": "*boolean*"
}
```


