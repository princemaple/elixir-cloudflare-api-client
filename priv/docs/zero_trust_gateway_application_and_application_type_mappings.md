# Zero Trust Gateway application and application type mappings

## List application and application type mappings

**GET** `/accounts/{account_id}/gateway/app_types`

List all application and application type mappings.

### Responses

#### 200 List application and application type mappings response.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX List application and application type mappings response failure.

```json
{
  "errors": {},
  "messages": {},
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


