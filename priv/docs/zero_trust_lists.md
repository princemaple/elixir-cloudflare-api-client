# Zero Trust lists

## Create Zero Trust list

**POST** `/accounts/{account_id}/gateway/lists`

Creates a new Zero Trust list.

### Responses

#### 200 Create Zero Trust list response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "items": [
    {
      "created_at": "*string*",
      "description": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "type": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create Zero Trust list response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List Zero Trust lists

**GET** `/accounts/{account_id}/gateway/lists`

Fetch all Zero Trust lists for an account.

### Responses

#### 200 List Zero Trust lists response.

> Data is at `body["result"]`

```json
[
  {
    "count": "*number*",
    "created_at": "*string*",
    "description": "*string*",
    "id": "*string*",
    "items": [
      {
        "created_at": null,
        "description": null,
        "value": null
      }
    ],
    "name": "*string*",
    "type": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX List Zero Trust lists response failure.

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



## Update Zero Trust list

**PUT** `/accounts/{account_id}/gateway/lists/{list_id}`

Updates a configured Zero Trust list. Skips updating list items if not included in the payload. A non empty list items will overwrite the existing list.

### Responses

#### 200 Update Zero Trust list response.

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "items": [
    {
      "created_at": "*string*",
      "description": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "type": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update Zero Trust list response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Patch Zero Trust list.

**PATCH** `/accounts/{account_id}/gateway/lists/{list_id}`

Appends or removes an item from a configured Zero Trust list.

### Responses

#### 200 Patch Zero Trust list response.

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "items": [
    {
      "created_at": "*string*",
      "description": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "type": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Patch Zero Trust list response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust list details

**GET** `/accounts/{account_id}/gateway/lists/{list_id}`

Fetch a single Zero Trust list.

### Responses

#### 200 Get Zero Trust list details response.

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "items": [
    {
      "created_at": "*string*",
      "description": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "type": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get Zero Trust list details response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Delete Zero Trust list

**DELETE** `/accounts/{account_id}/gateway/lists/{list_id}`

Deletes a Zero Trust list.

### Responses

#### 200 Delete Zero Trust list response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete Zero Trust list response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust list items

**GET** `/accounts/{account_id}/gateway/lists/{list_id}/items`

Fetch all items in a single Zero Trust list.

### Responses

#### 200 Get Zero Trust list items response.

> Data is at `body["result"]`

```json
[
  [
    {
      "created_at": "*string*",
      "description": "*string*",
      "value": "*string*"
    }
  ]
]
```

#### 4XX Get Zero Trust list items response failure.

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


