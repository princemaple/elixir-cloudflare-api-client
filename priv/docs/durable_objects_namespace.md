# Durable Objects Namespace

## List Namespaces

**GET** `/accounts/{account_id}/workers/durable_objects/namespaces`

Returns the Durable Object namespaces owned by an account.

### Responses

#### 200 List Namespaces response.

> Data is at `body["result"]`

```json
[
  {
    "class": "*string*",
    "id": "*string*",
    "name": "*string*",
    "script": "*string*",
    "use_sqlite": "*boolean*"
  }
]
```

#### 4XX List Namespaces response failure.

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## List Objects

**GET** `/accounts/{account_id}/workers/durable_objects/namespaces/{id}/objects`

Returns the Durable Objects in a given namespace.

### Responses

#### 200 List Objects response.

> Data is at `body["result"]`

```json
[
  {
    "hasStoredData": "*boolean*",
    "id": "*string*"
  }
]
```

#### 4XX List Objects response failure.

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
  "result_info": {
    "count": "*number*",
    "cursor": "*string*"
  },
  "success": "*boolean*"
}
```


