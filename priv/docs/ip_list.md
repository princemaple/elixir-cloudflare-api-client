# IP List

## Get Available IP Lists

**GET** `/accounts/{account_id}/intel/ip-lists`

Returns a list of available IP list categories (e.g., anonymizer, botnetcc, malware, tor, vpn, open_proxies). This endpoint provides metadata about which IP lists are available in the system.

### Responses

#### 200 Get Available IP Lists response.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "id": "*integer*",
    "name": "*string*"
  }
]
```

#### 4XX Get Available IP Lists response failure.

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


