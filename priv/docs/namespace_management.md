# Namespace Management

## List namespaces in catalog

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}/namespaces`

Returns a list of namespaces in the specified R2 catalog.
Supports hierarchical filtering and pagination for efficient traversal
of large namespace hierarchies.


### Responses

#### 200 List of namespaces retrieved successfully.

> Data is at `body["result"]`

```json
{
  "details": [
    {
      "created_at": "*string*",
      "namespace": [
        null
      ],
      "namespace_uuid": "*string*",
      "updated_at": "*string*"
    }
  ],
  "namespace_uuids": [
    "*string*"
  ],
  "namespaces": [
    [
      "*string*"
    ]
  ],
  "next_page_token": "*string*"
}
```

#### 400 Bad request (e.g., invalid page_size, malformed parent namespace).

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

#### 404 Catalog not found.

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


