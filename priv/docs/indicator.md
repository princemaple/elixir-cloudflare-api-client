# Indicator

## Lists indicators

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators`

Retrieves a paginated list of indicators for the account.

### Responses

#### 200 Returns a list of indicators.

> Data is at `body["result"]`

```json
{
  "indicators": [
    {
      "createdAt": "*string*",
      "datasetId": "*string*",
      "indicatorType": "*string*",
      "relatedEvents": [
        {
          "datasetId": "*string*",
          "eventId": "*string*"
        }
      ],
      "tags": [
        {
          "categoryName": "*string*",
          "uuid": "*string*",
          "value": "*string*"
        }
      ],
      "updatedAt": "*string*",
      "uuid": "*string*",
      "value": "*string*"
    }
  ],
  "pagination": {
    "page": "*number*",
    "pageSize": "*number*",
    "totalCount": "*number*",
    "totalPages": "*number*"
  }
}
```



## Creates multiple indicators in bulk

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/bulk`

Creates multiple indicators at once with their respective types and related datasets.

### Responses

#### 200 Returns the number of created indicators.

> Data is at `body["result"]`

```json
"*number*"
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Creates a new indicator

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/create`

Creates a new indicator with the specified type and related datasets.

### Responses

#### 200 Returns the created indicator.

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "datasetId": "*string*",
  "indicatorType": "*string*",
  "relatedEvents": [
    {
      "datasetId": "*string*",
      "eventId": "*string*"
    }
  ],
  "tags": [
    {
      "categoryName": "*string*",
      "uuid": "*string*",
      "value": "*string*"
    }
  ],
  "updatedAt": "*string*",
  "uuid": "*string*",
  "value": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List mirrored tags for an indicator dataset

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/tags`

Returns all mirrored tags from the indicator dataset (DO mirror table). No pagination.

### Responses

#### 200 Returns an array of mirrored tags.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Updates an indicator

**PATCH** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`

Updates an existing indicator's properties.

### Responses

#### 200 Returns the updated indicator.

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "datasetId": "*string*",
  "indicatorType": "*string*",
  "relatedEvents": [
    {
      "datasetId": "*string*",
      "eventId": "*string*"
    }
  ],
  "tags": [
    {
      "categoryName": "*string*",
      "uuid": "*string*",
      "value": "*string*"
    }
  ],
  "updatedAt": "*string*",
  "uuid": "*string*",
  "value": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Reads an indicator

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`

Retrieves a specific indicator by its UUID.

### Responses

#### 200 Returns the indicator.

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "datasetId": "*string*",
  "indicatorType": "*string*",
  "relatedEvents": [
    {
      "datasetId": "*string*",
      "eventId": "*string*"
    }
  ],
  "tags": [
    {
      "categoryName": "*string*",
      "uuid": "*string*",
      "value": "*string*"
    }
  ],
  "updatedAt": "*string*",
  "uuid": "*string*",
  "value": "*string*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Deletes an indicator

**DELETE** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`

Deletes a specific indicator by its UUID.

### Responses

#### 200 Indicator deleted successfully.

> Data is at `body["result"]`

```json
{
  "message": "*string*",
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Lists indicators across multiple datasets

**GET** `/accounts/{account_id}/cloudforce-one/events/indicators`

Retrieves a paginated list of indicators across specified datasets. Use datasetIds=all or datasetIds=* to query all datasets for the account. If no datasetIds provided, uses the default dataset.

### Responses

#### 200 Returns a paginated list of indicators.

> Data is at `body["result"]`

```json
{
  "properties": {
    "indicators": {
      "items": {
        "createdAt": "*string*",
        "datasetId": "*string*",
        "indicatorType": "*string*",
        "relatedEvents": [
          {
            "datasetId": null,
            "eventId": null
          }
        ],
        "tags": [
          {
            "categoryName": null,
            "uuid": null,
            "value": null
          }
        ],
        "updatedAt": "*string*",
        "uuid": "*string*",
        "value": "*string*"
      },
      "type": "*string*"
    },
    "pagination": {
      "properties": {
        "count": {
          "type": "*string*"
        },
        "page": {
          "type": "*string*"
        },
        "per_page": {
          "type": "*string*"
        },
        "total_count": {
          "type": "*string*"
        }
      },
      "type": "*string*"
    }
  },
  "type": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


