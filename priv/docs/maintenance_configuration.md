# Maintenance Configuration

## Update catalog maintenance configuration

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/maintenance-configs`

Update the maintenance configuration for a catalog. This allows you to
enable or disable compaction and adjust target file sizes for optimization.


### Responses

#### 200 Maintenance configuration updated successfully.

> Data is at `body["result"]`

```json
{
  "compaction": {
    "state": "*string*",
    "target_size_mb": "*string*"
  },
  "snapshot_expiration": {
    "max_snapshot_age": "*string*",
    "min_snapshots_to_keep": "*integer*",
    "state": "*string*"
  }
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



## Get catalog maintenance configuration

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}/maintenance-configs`

Retrieve the maintenance configuration for a specific catalog,
including compaction settings and credential status.


### Responses

#### 200 Maintenance configuration retrieved successfully.

> Data is at `body["result"]`

```json
{
  "credential_status": "*string*",
  "maintenance_config": {
    "compaction": {
      "state": null,
      "target_size_mb": null
    },
    "snapshot_expiration": {
      "max_snapshot_age": "*string*",
      "min_snapshots_to_keep": "*integer*",
      "state": null
    }
  }
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


