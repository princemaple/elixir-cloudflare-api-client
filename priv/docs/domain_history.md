# Domain History

## Get Domain History

**GET** `/accounts/{account_id}/intel/domain-history`

Gets historical security threat and content categories currently and previously assigned to a domain.

### Responses

#### 200 Get Domain History response.

> Data is at `body["result"]`

```json
[
  {
    "categorizations": [
      {
        "categories": [
          null
        ],
        "end": "*string*",
        "start": "*string*"
      }
    ],
    "domain": "*string*"
  }
]
```

#### 4XX Get Domain History response failure.

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


