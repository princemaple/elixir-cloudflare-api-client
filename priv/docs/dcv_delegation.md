# DCV Delegation

## Retrieve the DCV Delegation unique identifier.

**GET** `/zones/{zone_id}/dcv_delegation/uuid`

Retrieve the account and zone specific unique identifier used as part of the CNAME target for DCV Delegation.

### Responses

#### 200 Retrieve the DCV Delegation unique identifier response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Retrieve the DCV Delegation unique identifier response failure.

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


