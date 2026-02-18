# Table Management

## List tables in namespace

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables`

Returns a list of tables in the specified namespace within an R2 catalog.
Supports pagination for efficient traversal of large table collections.


### Responses

#### 200 List of tables retrieved successfully.

> Data is at `body["result"]`

```json
{
  "details": [
    {
      "created_at": "*string*",
      "identifier": {
        "name": null,
        "namespace": null
      },
      "location": "*string*",
      "metadata_location": "*string*",
      "table_uuid": "*string*",
      "updated_at": "*string*"
    }
  ],
  "identifiers": [
    {
      "name": "*string*",
      "namespace": [
        null
      ]
    }
  ],
  "next_page_token": "*string*",
  "table_uuids": [
    "*string*"
  ]
}
```

#### 400 Bad request (e.g., invalid page_size, malformed namespace).

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {}
  ],
  "success": "*boolean*"
}
```

#### 401 Authentication failed.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {}
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {}
  ],
  "success": "*boolean*"
}
```

#### 404 Catalog or namespace not found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {}
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {}
  ],
  "success": "*boolean*"
}
```


