# Category

## Get all application categories

**GET** `/accounts/{accountId}/resource-library/categories`

Get all application categories.

### Responses

#### 200 Get all application categories response.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "id": "*string*",
    "name": "*string*"
  }
]
```

#### 4XX Get application categories response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Show application category by ID

**GET** `/accounts/{accountId}/resource-library/categories/{id}`

Get application category by ID.

### Responses

#### 200 Get application category by id response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "name": "*string*"
}
```

#### 4XX Get application category by id response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Lists categories across multiple datasets

**GET** `/accounts/{account_id}/cloudforce-one/events/categories`



### Responses

#### 200 Returns a list of categories.

> Data is at `body["result"]`

```json
[
  {
    "killChain": "*number*",
    "mitreAttack": [
      "*string*"
    ],
    "name": "*string*",
    "shortname": "*string*",
    "uuid": "*string*"
  }
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



## Lists categories

**GET** `/accounts/{account_id}/cloudforce-one/events/categories/catalog`



### Responses

#### 200 Returns a list of categories.

> Data is at `body["result"]`

```json
[
  {
    "killChain": "*number*",
    "mitreAttack": [
      "*string*"
    ],
    "name": "*string*",
    "shortname": "*string*",
    "uuid": "*string*"
  }
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



## Creates a new category

**POST** `/accounts/{account_id}/cloudforce-one/events/categories/create`



### Responses

#### 200 Returns the created category.

> Data is at `body["result"]`

```json
{
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "name": "*string*",
  "shortname": "*string*",
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



## Updates a category

**POST** `/accounts/{account_id}/cloudforce-one/events/categories/{category_id}`



### Responses

#### 200 Returns the updated category.

> Data is at `body["result"]`

```json
{
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "name": "*string*",
  "shortname": "*string*",
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



## Updates a category

**PATCH** `/accounts/{account_id}/cloudforce-one/events/categories/{category_id}`



### Responses

#### 200 Returns the updated category.

> Data is at `body["result"]`

```json
{
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "name": "*string*",
  "shortname": "*string*",
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



## Reads a category

**GET** `/accounts/{account_id}/cloudforce-one/events/categories/{category_id}`



### Responses

#### 200 Returns a category.

> Data is at `body["result"]`

```json
{
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "name": "*string*",
  "shortname": "*string*",
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



## Deletes a category

**DELETE** `/accounts/{account_id}/cloudforce-one/events/categories/{category_id}`



### Responses

#### 200 Returns the uuid of the deleted category.

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


