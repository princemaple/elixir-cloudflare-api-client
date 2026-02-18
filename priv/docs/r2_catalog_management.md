# R2 Catalog Management

## List R2 catalogs

**GET** `/accounts/{account_id}/r2-catalog`

Returns a list of R2 buckets that have been enabled as Apache Iceberg catalogs
for the specified account. Each catalog represents an R2 bucket configured
to store Iceberg metadata and data files.


### Responses

#### 200 List of R2 catalogs.

> Data is at `body["result"]`

```json
{
  "warehouses": [
    {
      "bucket": "*string*",
      "credential_status": "*string*",
      "id": "*string*",
      "maintenance_config": {},
      "name": "*string*",
      "status": "*string*"
    }
  ]
}
```

#### 400 Bad request.

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



## Get R2 catalog details

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}`

Retrieve detailed information about a specific R2 catalog by bucket name.
Returns catalog status, maintenance configuration, and credential status.


### Responses

#### 200 R2 catalog details.

> Data is at `body["result"]`

```json
{
  "bucket": "*string*",
  "credential_status": "*string*",
  "id": "*string*",
  "maintenance_config": {},
  "name": "*string*",
  "status": "*string*"
}
```

#### 400 Bad request.

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



## Disable R2 catalog

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/disable`

Disable an R2 bucket as a catalog. This operation deactivates the catalog
but preserves existing metadata and data files. The catalog can be
re-enabled later.


### Responses

#### 204 Catalog disabled successfully.

> Data is at `body["result"]`

```json

```

#### 400 Bad request.

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



## Enable R2 bucket as a catalog

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/enable`

Enable an R2 bucket as an Apache Iceberg catalog. This operation creates
the necessary catalog infrastructure and activates the bucket for storing
Iceberg metadata and data files.


### Responses

#### 200 Catalog enabled successfully.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "name": "*string*"
}
```

#### 400 Bad request.

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

#### 409 Catalog already enabled.

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


