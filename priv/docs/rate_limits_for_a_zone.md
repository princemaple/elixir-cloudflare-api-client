# Rate limits for a zone

## Create a rate limit

**POST** `/zones/{zone_id}/rate_limits`

Creates a new rate limit for a zone. Refer to the object definition for a list of required attributes.

### Responses

#### 200 Create a rate limit response.

> Data is at `body["result"]`

```json
{
  "action": {},
  "bypass": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ],
  "description": "*string*",
  "disabled": "*boolean*",
  "id": "*string*",
  "match": {},
  "period": "*number*",
  "threshold": "*number*"
}
```

#### 4XX Create a rate limit response failure.

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



## List rate limits

**GET** `/zones/{zone_id}/rate_limits`

Fetches the rate limits for a zone.

### Responses

#### 200 List rate limits response.

> Data is at `body["result"]`

```json
[
  {
    "action": {},
    "bypass": [
      {
        "name": null,
        "value": null
      }
    ],
    "description": "*string*",
    "disabled": "*boolean*",
    "id": "*string*",
    "match": {},
    "period": "*number*",
    "threshold": "*number*"
  }
]
```

#### 4XX List rate limits response failure.

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



## Update a rate limit

**PUT** `/zones/{zone_id}/rate_limits/{rate_limit_id}`

Updates an existing rate limit.

### Responses

#### 200 Update a rate limit response.

> Data is at `body["result"]`

```json
{
  "action": {},
  "bypass": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ],
  "description": "*string*",
  "disabled": "*boolean*",
  "id": "*string*",
  "match": {},
  "period": "*number*",
  "threshold": "*number*"
}
```

#### 4XX Update a rate limit response failure.

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



## Get a rate limit

**GET** `/zones/{zone_id}/rate_limits/{rate_limit_id}`

Fetches the details of a rate limit.

### Responses

#### 200 Get a rate limit response.

> Data is at `body["result"]`

```json
{
  "action": {},
  "bypass": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ],
  "description": "*string*",
  "disabled": "*boolean*",
  "id": "*string*",
  "match": {},
  "period": "*number*",
  "threshold": "*number*"
}
```

#### 4XX Get a rate limit response failure.

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



## Delete a rate limit

**DELETE** `/zones/{zone_id}/rate_limits/{rate_limit_id}`

Deletes an existing rate limit.

### Responses

#### 200 Delete a rate limit response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a rate limit response failure.

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


