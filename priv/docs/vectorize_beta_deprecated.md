# Vectorize Beta (Deprecated)

## Create Vectorize Index (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes`

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



## List Vectorize Indexes (Deprecated)

**GET** `/accounts/{account_id}/vectorize/indexes`

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



## Update Vectorize Index (Deprecated)

**PUT** `/accounts/{account_id}/vectorize/indexes/{index_name}`

Updates and returns the specified Vectorize Index.

### Responses

#### 200 Update Vectorize Index Response

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

#### 4XX Update Vectorize Index Failure Response

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



## Get Vectorize Index (Deprecated)

**GET** `/accounts/{account_id}/vectorize/indexes/{index_name}`

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



## Delete Vectorize Index (Deprecated)

**DELETE** `/accounts/{account_id}/vectorize/indexes/{index_name}`

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



## Delete Vectors By Identifier (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/delete-by-ids`

Delete a set of vectors from an index by their vector identifiers.

### Responses

#### 200 Delete Vector Identifiers Response

> Data is at `body["result"]`

```json
{
  "count": "*integer*",
  "ids": [
    "*string*"
  ]
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



## Get Vectors By Identifier (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/get-by-ids`

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



## Insert Vectors (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/insert`

Inserts vectors into the specified index and returns the count of the vectors successfully inserted.

### Responses

#### 200 Insert Vectors Response

> Data is at `body["result"]`

```json
{
  "count": "*integer*",
  "ids": [
    "*string*"
  ]
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



## Query Vectors (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/query`

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



## Upsert Vectors (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/upsert`

Upserts vectors into the specified index, creating them if they do not exist and returns the count of values and ids successfully inserted.

### Responses

#### 200 Insert Vectors Response

> Data is at `body["result"]`

```json
{
  "count": "*integer*",
  "ids": [
    "*string*"
  ]
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


