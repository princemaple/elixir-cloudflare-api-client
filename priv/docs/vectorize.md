# Vectorize

## Create Vectorize Index

**POST** `/accounts/{account_id}/vectorize/v2/indexes`

Creates and returns a new Vectorize Index.

### Responses

#### 200 Create Vectorize Index Response

> Data is at `body["result"]`

```json
{
  "config": {
    "dimensions": "*integer*",
    "metric": "*string*"
  },
  "created_on": "*string*",
  "description": "*string*",
  "modified_on": "*string*",
  "name": "*string*"
}
```

#### 4XX Create Vectorize Index Failure Response

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



## List Vectorize Indexes

**GET** `/accounts/{account_id}/vectorize/v2/indexes`

Returns a list of Vectorize Indexes

### Responses

#### 200 List Vectorize Index Response

> Data is at `body["result"]`

```json
[
  {
    "config": {
      "dimensions": null,
      "metric": null
    },
    "created_on": "*string*",
    "description": "*string*",
    "modified_on": "*string*",
    "name": "*string*"
  }
]
```

#### 4XX List Vectorize Index Failure Response

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



## Get Vectorize Index

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}`

Returns the specified Vectorize Index.

### Responses

#### 200 Get Vectorize Index Response

> Data is at `body["result"]`

```json
{
  "config": {
    "dimensions": "*integer*",
    "metric": "*string*"
  },
  "created_on": "*string*",
  "description": "*string*",
  "modified_on": "*string*",
  "name": "*string*"
}
```

#### 4XX Get Vectorize Index Failure

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



## Delete Vectorize Index

**DELETE** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}`

Deletes the specified Vectorize Index.

### Responses

#### 200 Delete Vectorize Index Response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete Vectorize Index Failure

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



## Delete Vectors By Identifier

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/delete_by_ids`

Delete a set of vectors from an index by their vector identifiers.

### Responses

#### 200 Delete Vector Identifiers Response

> Data is at `body["result"]`

```json
{
  "mutationId": null
}
```

#### 4XX Delete Vector Identifiers Failure Response

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



## Get Vectors By Identifier

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/get_by_ids`

Get a set of vectors from an index by their vector identifiers.

### Responses

#### 200 Get Vectors By Identifier Response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "metadata": {},
    "namespace": "*string*",
    "values": [
      "*number*"
    ]
  }
]
```

#### 4XX Get Vectors By Identifier Failure Response

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



## Get Vectorize Index Info

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/info`

Get information about a vectorize index.

### Responses

#### 200 Get Vectorize Index Info Response

> Data is at `body["result"]`

```json
{
  "dimensions": "*integer*",
  "processedUpToDatetime": "*string*",
  "processedUpToMutation": null,
  "vectorCount": "*integer*"
}
```

#### 4XX Get Vectorize Index Info Failure Response

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



## Insert Vectors

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/insert`

Inserts vectors into the specified index and returns a mutation id corresponding to the vectors enqueued for insertion.

### Responses

#### 200 Insert Vectors Response

> Data is at `body["result"]`

```json
{
  "mutationId": null
}
```

#### 4XX Insert Vectors Failure Response

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



## List Vectors

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/list`

Returns a paginated list of vector identifiers from the specified index.

### Responses

#### 200 List Vectors Response

> Data is at `body["result"]`

```json
{
  "count": "*integer*",
  "cursorExpirationTimestamp": "*string*",
  "isTruncated": "*boolean*",
  "nextCursor": "*string*",
  "totalCount": "*integer*",
  "vectors": [
    {
      "id": "*string*"
    }
  ]
}
```

#### 4XX List Vectors Failure Response

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



## Create Metadata Index

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/create`

Enable metadata filtering based on metadata property. Limited to 10 properties.

### Responses

#### 200 Create Metadata Index Response

> Data is at `body["result"]`

```json
{
  "mutationId": null
}
```

#### 4XX Create Metadata Index Failure Response

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



## Delete Metadata Index

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/delete`

Allow Vectorize to delete the specified metadata index.

### Responses

#### 200 Delete Metadata Index Response

> Data is at `body["result"]`

```json
{
  "mutationId": null
}
```

#### 4XX Delete Metadata Index Failure

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



## List Metadata Indexes

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/list`

List Metadata Indexes for the specified Vectorize Index.

### Responses

#### 200 List Metadata Index Response

> Data is at `body["result"]`

```json
{
  "metadataIndexes": [
    {
      "indexType": "*string*",
      "propertyName": "*string*"
    }
  ]
}
```

#### 4XX List Metadata Index Failure Response

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



## Query Vectors

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/query`

Finds vectors closest to a given vector in an index.

### Responses

#### 200 Query Vectors Response

> Data is at `body["result"]`

```json
{
  "count": "*integer*",
  "matches": [
    {
      "id": "*string*",
      "metadata": {},
      "namespace": "*string*",
      "score": "*number*",
      "values": [
        "*number*"
      ]
    }
  ]
}
```

#### 4XX Query Vectors Failure Response

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



## Upsert Vectors

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/upsert`

Upserts vectors into the specified index, creating them if they do not exist and returns a mutation id corresponding to the vectors enqueued for upsertion.

### Responses

#### 200 Upsert Vectors Response

> Data is at `body["result"]`

```json
{
  "mutationId": null
}
```

#### 4XX Upsert Vectors Failure Response

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


