# User Billing History

## Billing History Details

**GET** `/user/billing/history`

Accesses your billing history object.

### Responses

#### 200 Billing History Details response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "amount": "*number*",
    "currency": "*string*",
    "description": "*string*",
    "id": "*string*",
    "occurred_at": "*string*",
    "type": "*string*",
    "zone": {
      "name": "*string*"
    }
  }
]
```

#### 4XX Billing History Details response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```


