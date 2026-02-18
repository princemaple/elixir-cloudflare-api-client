# Account Load Balancer Search

## Search Resources

**GET** `/accounts/{account_id}/load_balancers/search`

Search for Load Balancing resources.

### Responses

#### 200 Search Resources response.

> Data is at `body["result"]`

```json
{
  "resources": [
    {
      "reference_type": "*string*",
      "references": [
        {}
      ],
      "resource_id": "*string*",
      "resource_name": "*string*",
      "resource_type": "*string*"
    }
  ]
}
```

#### 4XX Search Resources response failure.

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
    "total_count": "*number*",
    "total_pages": "*number*"
  },
  "success": "*boolean*"
}
```


