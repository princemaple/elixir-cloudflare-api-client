# Tag

## List indicators related to a tag

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/tags/{tag_uuid}/indicators`

Returns indicators associated with the provided tag UUID across all indicator datasets, with pagination.

### Responses

#### 200 Returns a paginated list of indicators.

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



## Lists all tags (SoT)

**GET** `/accounts/{account_id}/cloudforce-one/events/tags`

Returns all Source-of-Truth tags for an account.

### Responses

#### 200 Returns a paginated list of tags.

> Data is at `body["result"]`

```json
{
  "pagination": {
    "page": "*number*",
    "pageSize": "*number*",
    "totalCount": "*number*",
    "totalPages": "*number*"
  },
  "tags": [
    {
      "activeDuration": "*string*",
      "actorCategory": "*string*",
      "aliasGroupNames": [
        "*string*"
      ],
      "aliasGroupNamesInternal": [
        "*string*"
      ],
      "analyticPriority": "*number*",
      "attributionConfidence": "*string*",
      "attributionOrganization": "*string*",
      "categoryName": "*string*",
      "categoryUuid": "*string*",
      "externalReferenceLinks": [
        "*string*"
      ],
      "internalDescription": "*string*",
      "motive": "*string*",
      "opsecLevel": "*string*",
      "originCountryISO": "*string*",
      "priority": "*number*",
      "sophisticationLevel": "*string*",
      "uuid": "*string*",
      "value": "*string*"
    }
  ]
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



## Creates a new tag

**POST** `/accounts/{account_id}/cloudforce-one/events/tags/create`

Creates a new tag to be used accross threat events.

### Responses

#### 200 Returns the created tag.

> Data is at `body["result"]`

```json
{
  "activeDuration": "*string*",
  "actorCategory": "*string*",
  "aliasGroupNames": [
    "*string*"
  ],
  "aliasGroupNamesInternal": [
    "*string*"
  ],
  "analyticPriority": "*number*",
  "attributionConfidence": "*string*",
  "attributionOrganization": "*string*",
  "categoryName": "*string*",
  "categoryUuid": "*string*",
  "externalReferenceLinks": [
    "*string*"
  ],
  "internalDescription": "*string*",
  "motive": "*string*",
  "opsecLevel": "*string*",
  "originCountryISO": "*string*",
  "priority": "*number*",
  "sophisticationLevel": "*string*",
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



## Updates a tag (SoT)

**PATCH** `/accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`

Updates a Source-of-Truth tag by UUID.

### Responses

#### 200 Returns the updated tag.

> Data is at `body["result"]`

```json
{
  "activeDuration": "*string*",
  "actorCategory": "*string*",
  "aliasGroupNames": [
    "*string*"
  ],
  "aliasGroupNamesInternal": [
    "*string*"
  ],
  "analyticPriority": "*number*",
  "attributionConfidence": "*string*",
  "attributionOrganization": "*string*",
  "categoryName": "*string*",
  "categoryUuid": "*string*",
  "externalReferenceLinks": [
    "*string*"
  ],
  "internalDescription": "*string*",
  "motive": "*string*",
  "opsecLevel": "*string*",
  "originCountryISO": "*string*",
  "priority": "*number*",
  "sophisticationLevel": "*string*",
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



## Deletes a tag (SoT)

**DELETE** `/accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`

Deletes a Source-of-Truth tag by UUID.

### Responses

#### 200 Returns the uuid of the deleted tag.

> Data is at `body["result"]`

```json
{
  "uuid": "*string*"
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


