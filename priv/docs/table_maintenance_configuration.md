# Table Maintenance Configuration

## Update table maintenance configuration

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables/{table_name}/maintenance-configs`

Update the maintenance configuration for a specific table. This allows you to
enable or disable compaction and adjust target file sizes for optimization.


### Responses

#### 200 Table maintenance configuration updated successfully.

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

#### 404 Table not found.

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



## Get table maintenance configuration

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables/{table_name}/maintenance-configs`

Retrieve the maintenance configuration for a specific table,
including compaction settings.


### Responses

#### 200 Table maintenance configuration retrieved successfully.

> Data is at `body["result"]`

```json
{
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

#### 404 Table not found.

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


