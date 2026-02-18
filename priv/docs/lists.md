# Lists

## Create a list

**POST** `/accounts/{account_id}/rules/lists`

Creates a new list of the specified kind.

### Responses

#### 200 Create a list response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create a list response failure.

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



## Get lists

**GET** `/accounts/{account_id}/rules/lists`

Fetches all lists in the account.

### Responses

#### 200 Get lists response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get lists response failure.

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



## Get bulk operation status

**GET** `/accounts/{account_id}/rules/lists/bulk_operations/{operation_id}`

Gets the current status of an asynchronous operation on a list.

The `status` property can have one of the following values: `pending`, `running`, `completed`, or `failed`. If the status is `failed`, the `error` property will contain a message describing the error.

### Responses

#### 200 Get bulk operation status response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get bulk operation status response failure.

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



## Update a list

**PUT** `/accounts/{account_id}/rules/lists/{list_id}`

Updates the description of a list.

### Responses

#### 200 Update a list response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update a list response failure.

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



## Get a list

**GET** `/accounts/{account_id}/rules/lists/{list_id}`

Fetches the details of a list.

### Responses

#### 200 Get a list response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a list response failure.

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



## Delete a list

**DELETE** `/accounts/{account_id}/rules/lists/{list_id}`

Deletes a specific list and all its items.

### Responses

#### 200 Delete a list response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete a list response failure.

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



## Update all list items

**PUT** `/accounts/{account_id}/rules/lists/{list_id}/items`

Removes all existing items from the list and adds the provided items to the list.

This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.

There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.

### Responses

#### 200 Update all list items response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update all list items response failure.

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



## Create list items

**POST** `/accounts/{account_id}/rules/lists/{list_id}/items`

Appends new items to the list.

This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.

There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.

### Responses

#### 200 Create list items response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create list items response failure.

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



## Get list items

**GET** `/accounts/{account_id}/rules/lists/{list_id}/items`

Fetches all the items in the list.

### Responses

#### 200 Get list items response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get list items response failure.

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
    "cursors": {
      "after": "*string*",
      "before": "*string*"
    }
  },
  "success": "*boolean*"
}
```



## Delete list items

**DELETE** `/accounts/{account_id}/rules/lists/{list_id}/items`

Removes one or more items from a list.

This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.

There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.

### Responses

#### 200 Delete list items response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete list items response failure.

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



## Get a list item

**GET** `/accounts/{account_id}/rules/lists/{list_id}/items/{item_id}`

Fetches a list item in the list.

### Responses

#### 200 Get a list item response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a list item response failure.

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


