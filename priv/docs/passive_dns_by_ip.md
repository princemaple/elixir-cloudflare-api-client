# Passive DNS by IP

## Get Passive DNS by IP

**GET** `/accounts/{account_id}/intel/dns`

Gets a list of all the domains that have resolved to a specific IP address.

### Responses

#### 200 Get Passive DNS by IP response.

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "page": "*number*",
  "per_page": "*number*",
  "reverse_records": [
    {
      "first_seen": "*string*",
      "hostname": "*string*",
      "last_seen": "*string*"
    }
  ]
}
```

#### 4XX Get Passive DNS by IP response failure.

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


