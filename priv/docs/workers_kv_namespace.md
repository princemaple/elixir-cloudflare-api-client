# Workers KV Namespace

## Create a Namespace

**POST** `/accounts/{account_id}/storage/kv/namespaces`

Creates a namespace under the given title. A `400` is returned if the account already owns a namespace with this title. A namespace must be explicitly deleted to be replaced.

### Responses

#### 200 Create a Namespace response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "supports_url_encoding": "*boolean*",
  "title": "*string*"
}
```

#### 4XX Create a Namespace response failure.

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



## List Namespaces

**GET** `/accounts/{account_id}/storage/kv/namespaces`

Returns the namespaces owned by an account.

### Responses

#### 200 List Namespaces response.

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "supports_url_encoding": "*boolean*",
    "title": "*string*"
  }
]
```

#### 4XX List Namespaces response failure.

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



## Rename a Namespace

**PUT** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}`

Modifies a namespace's title.

### Responses

#### 200 Rename a Namespace response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "supports_url_encoding": "*boolean*",
  "title": "*string*"
}
```

#### 4XX Rename a Namespace response failure.

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



## Get a Namespace

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}`

Get the namespace corresponding to the given ID.

### Responses

#### 200 Get a Namespace response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "supports_url_encoding": "*boolean*",
  "title": "*string*"
}
```

#### 4XX Get a Namespace response failure.

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



## Remove a Namespace

**DELETE** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}`

Deletes the namespace corresponding to the given ID.

### Responses

#### 200 Remove a Namespace response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Remove a Namespace response failure.

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



## Write multiple key-value pairs

**PUT** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk`

Write multiple keys and values at once. Body should be an array of up to 10,000 key-value pairs to be stored, along with optional expiration information. Existing values and expirations will be overwritten. If neither `expiration` nor `expiration_ttl` is specified, the key-value pair will never expire. If both are set, `expiration_ttl` is used and `expiration` is ignored. The entire request size must be 100 megabytes or less.

### Responses

#### 200 Write multiple key-value pairs response.

> Data is at `body["result"]`

```json
{
  "successful_key_count": "*number*",
  "unsuccessful_keys": [
    "*string*"
  ]
}
```

#### 4XX Write multiple key-value pairs response failure.

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
  "result": {
    "successful_key_count": "*number*",
    "unsuccessful_keys": [
      "*string*"
    ]
  },
  "success": "*boolean*"
}
```



## Delete multiple key-value pairs

**DELETE** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk`

Remove multiple KV pairs from the namespace. Body should be an array of up to 10,000 keys to be removed.

### Responses

#### 200 Delete multiple key-value pairs response.

> Data is at `body["result"]`

```json
{
  "successful_key_count": "*number*",
  "unsuccessful_keys": [
    "*string*"
  ]
}
```

#### 4XX Delete multiple key-value pairs response failure.

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
  "result": {
    "successful_key_count": "*number*",
    "unsuccessful_keys": [
      "*string*"
    ]
  },
  "success": "*boolean*"
}
```



## Delete multiple key-value pairs

**POST** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk/delete`

Remove multiple KV pairs from the namespace. Body should be an array of up to 10,000 keys to be removed.

### Responses

#### 200 Delete multiple key-value pairs response.

> Data is at `body["result"]`

```json
{
  "successful_key_count": "*number*",
  "unsuccessful_keys": [
    "*string*"
  ]
}
```

#### 4XX Delete multiple key-value pairs response failure.

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
  "result": {
    "successful_key_count": "*number*",
    "unsuccessful_keys": [
      "*string*"
    ]
  },
  "success": "*boolean*"
}
```



## Get multiple key-value pairs

**POST** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk/get`

Retrieve up to 100 KV pairs from the namespace. Keys must contain text-based values. JSON values can optionally be parsed instead of being returned as a string value. Metadata can be included if `withMetadata` is true.

### Responses

#### 200 Get multiple key-value pairs response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get multiple key-value pairs response failure.

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



## List a Namespace's Keys

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/keys`

Lists a namespace's keys.

### Responses

#### 200 List a Namespace's Keys response.

> Data is at `body["result"]`

```json
[
  {
    "expiration": "*number*",
    "metadata": null,
    "name": "*string*"
  }
]
```

#### 4XX List a Namespace's Keys response failure.

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



## Read the metadata for a key

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/metadata/{key_name}`

Returns the metadata associated with the given key in the given namespace. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name.

### Responses

#### 200 Read the metadata for a key response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Read the metadata for a key response failure.

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



## Write key-value pair with optional metadata

**PUT** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/values/{key_name}`

Write a value identified by a key. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name. Body should be the value to be stored. If JSON metadata to be associated with the key/value pair is needed, use `multipart/form-data` content type for your PUT request (see dropdown below in `REQUEST BODY SCHEMA`). Existing values, expirations, and metadata will be overwritten. If neither `expiration` nor `expiration_ttl` is specified, the key-value pair will never expire. If both are set, `expiration_ttl` is used and `expiration` is ignored.

### Responses

#### 200 Write key-value pair with metadata response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Write key-value pair with metadata response failure.

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



## Read key-value pair

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/values/{key_name}`

Returns the value associated with the given key in the given namespace. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name. If the KV-pair is set to expire at some point, the expiration time as measured in seconds since the UNIX epoch will be returned in the `expiration` response header.

### Responses

#### 200 Read key-value pair response.

> Data is at `body["result"]`

```json

```

#### 4XX Read key-value pair response failure.

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



## Delete key-value pair

**DELETE** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/values/{key_name}`

Remove a KV pair from the namespace. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name.

### Responses

#### 200 Delete key-value pair response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete key-value pair response failure.

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


