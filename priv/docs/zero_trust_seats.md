# Zero Trust seats

## Update a user seat

**PATCH** `/accounts/{account_id}/access/seats`

Removes a user from a Zero Trust seat when both `access_seat` and `gateway_seat` are set to false.

### Responses

#### 200 Update a user seat response

> Data is at `body["result"]`

```json
[
  {
    "access_seat": "*boolean*",
    "created_at": "*string*",
    "gateway_seat": "*boolean*",
    "seat_uid": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX Update a user seat response failure

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


