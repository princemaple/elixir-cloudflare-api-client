# Zero Trust Gateway categories

## List categories

**GET** `/accounts/{account_id}/gateway/categories`

List all categories.

### Responses

#### 200 List categories response.

> Data is at `body["result"]`

```json
[
  {
    "beta": "*boolean*",
    "class": "*string*",
    "description": "*string*",
    "id": "*integer*",
    "name": "*string*",
    "subcategories": [
      {
        "beta": null,
        "class": null,
        "description": null,
        "id": null,
        "name": null
      }
    ]
  }
]
```

#### 4XX List categories response failure.

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


