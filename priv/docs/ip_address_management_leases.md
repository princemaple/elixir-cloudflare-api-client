# IP Address Management Leases

## List Leases

**GET** `/accounts/{account_id}/addressing/leases`

List all leases owned by the account.

### Responses

#### 200 List Leases response

> Data is at `body["result"]`

```json
[
  {
    "active_from": "*string*",
    "cidrs": [
      "*string*"
    ],
    "created_at": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "owner_id": "*string*",
    "purpose": "*string*"
  }
]
```

#### 4XX List Leases response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```


