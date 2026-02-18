# Domain Intelligence

## Get Domain Details

**GET** `/accounts/{account_id}/intel/domain`

Gets security details and statistics about a domain.

### Responses

#### 200 Get Domain Details response.

> Data is at `body["result"]`

```json
{
  "additional_information": {
    "suspected_malware_family": "*string*"
  },
  "application": {
    "id": "*integer*",
    "name": "*string*"
  },
  "content_categories": [
    {
      "id": "*integer*",
      "name": "*string*",
      "super_category_id": "*integer*"
    }
  ],
  "domain": "*string*",
  "inherited_content_categories": [
    {
      "id": "*integer*",
      "name": "*string*",
      "super_category_id": "*integer*"
    }
  ],
  "inherited_from": "*string*",
  "inherited_risk_types": [
    {
      "id": "*integer*",
      "name": "*string*",
      "super_category_id": "*integer*"
    }
  ],
  "popularity_rank": "*integer*",
  "resolves_to_refs": [
    {
      "id": null,
      "value": "*string*"
    }
  ],
  "risk_score": "*number*",
  "risk_types": [
    {
      "id": "*integer*",
      "name": "*string*",
      "super_category_id": "*integer*"
    }
  ]
}
```

#### 4XX Get Domain Details response failure.

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
  "success": "*boolean*"
}
```



## Get Multiple Domain Details

**GET** `/accounts/{account_id}/intel/domain/bulk`

Same as summary.

### Responses

#### 200 Get Multiple Domain Details response.

> Data is at `body["result"]`

```json
[
  {
    "additional_information": {
      "suspected_malware_family": "*string*"
    },
    "application": {
      "id": "*integer*",
      "name": "*string*"
    },
    "content_categories": [
      {
        "id": "*integer*",
        "name": "*string*",
        "super_category_id": "*integer*"
      }
    ],
    "domain": "*string*",
    "inherited_content_categories": [
      {
        "id": null,
        "name": null,
        "super_category_id": null
      }
    ],
    "inherited_from": "*string*",
    "inherited_risk_types": [
      {
        "id": null,
        "name": null,
        "super_category_id": null
      }
    ],
    "popularity_rank": "*integer*",
    "risk_score": "*number*",
    "risk_types": [
      {
        "id": null,
        "name": null,
        "super_category_id": null
      }
    ]
  }
]
```

#### 4XX Get Multiple Domain Details response failure.

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


