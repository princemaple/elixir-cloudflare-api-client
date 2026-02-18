# Filters

## Update filters

**PUT** `/zones/{zone_id}/filters`

Updates one or more existing filters.

### Responses

#### 200 Update filters response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "expression": "*string*",
    "id": "*string*",
    "paused": "*boolean*",
    "ref": "*string*"
  }
]
```

#### 4XX Update filters response failure

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



## Create filters

**POST** `/zones/{zone_id}/filters`

Creates one or more filters.

### Responses

#### 200 Create filters response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "expression": "*string*",
    "id": "*string*",
    "paused": "*boolean*",
    "ref": "*string*"
  }
]
```

#### 4XX Create filters response failure

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



## List filters

**GET** `/zones/{zone_id}/filters`

Fetches filters in a zone. You can filter the results using several optional parameters.

### Responses

#### 200 List filters response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "expression": "*string*",
    "id": "*string*",
    "paused": "*boolean*",
    "ref": "*string*"
  }
]
```

#### 4XX List filters response failure

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



## Delete filters

**DELETE** `/zones/{zone_id}/filters`

Deletes one or more existing filters.

### Responses

#### 200 Delete filters response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*"
  }
]
```

#### 4XX Delete filters response failure

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



## Update a filter

**PUT** `/zones/{zone_id}/filters/{filter_id}`

Updates an existing filter.

### Responses

#### 200 Update a filter response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "paused": "*boolean*",
  "ref": "*string*"
}
```

#### 4XX Update a filter response failure

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



## Get a filter

**GET** `/zones/{zone_id}/filters/{filter_id}`

Fetches the details of a filter.

### Responses

#### 200 Get a filter response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "paused": "*boolean*",
  "ref": "*string*"
}
```

#### 4XX Get a filter response failure

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



## Delete a filter

**DELETE** `/zones/{zone_id}/filters/{filter_id}`

Deletes an existing filter.

### Responses

#### 200 Delete a filter response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a filter response failure

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


