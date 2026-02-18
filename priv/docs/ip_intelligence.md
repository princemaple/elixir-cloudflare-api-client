# IP Intelligence

## Get IP Overview

**GET** `/accounts/{account_id}/intel/ip`

Gets the geolocation, ASN, infrastructure type of the ASN, and any security threat categories of an IP address. **Must provide ip query parameters.** For example, `/intel/ip?ipv4=1.1.1.1` or `/intel/ip?ipv6=2001:db8::1`.

### Responses

#### 200 Get IP Overview response.

> Data is at `body["result"]`

```json
[
  {
    "belongs_to_ref": {
      "country": "*string*",
      "description": "*string*",
      "id": "*string*",
      "type": "*string*",
      "value": "*string*"
    },
    "ip": "*string*",
    "risk_types": [
      {
        "id": "*number*",
        "name": "*string*",
        "super_category_id": "*number*"
      }
    ]
  }
]
```

#### 4XX Get IP Overview response failure.

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


