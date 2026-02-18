# TagCategory

## Lists all tag categories (SoT)

**GET** `/accounts/{account_id}/cloudforce-one/events/tags/categories`

Returns all Source-of-Truth tag categories for an account.

### Responses

#### 200 Returns a list of tag categories.

> Data is at `body["result"]`

```json
{
  "categories": [
    {
      "createdAt": "*string*",
      "description": "*string*",
      "name": "*string*",
      "updatedAt": "*string*",
      "uuid": "*string*"
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



## Creates a new tag category (SoT)

**POST** `/accounts/{account_id}/cloudforce-one/events/tags/categories/create`

Creates a new Source-of-Truth tag category for an account.

### Responses

#### 200 Returns the created tag category.

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "description": "*string*",
  "name": "*string*",
  "updatedAt": "*string*",
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

#### 409 Bad Request.

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



## Updates a tag category (SoT)

**PATCH** `/accounts/{account_id}/cloudforce-one/events/tags/categories/{category_uuid}`

Updates a Source-of-Truth tag category by UUID.

### Responses

#### 200 Returns the updated tag category.

> Data is at `body["result"]`

```json
{
  "createdAt": "*string*",
  "description": "*string*",
  "name": "*string*",
  "updatedAt": "*string*",
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

#### 409 Bad Request.

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



## Deletes a tag category (SoT)

**DELETE** `/accounts/{account_id}/cloudforce-one/events/tags/categories/{category_uuid}`

Deletes a Source-of-Truth tag category by UUID.

### Responses

#### 200 Returns the uuid of the deleted tag category.

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


