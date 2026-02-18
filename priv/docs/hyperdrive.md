# Hyperdrive

## Create Hyperdrive

**POST** `/accounts/{account_id}/hyperdrive/configs`

Creates and returns a new Hyperdrive configuration.

### Responses

#### 200 Create Hyperdrive Response.

> Data is at `body["result"]`

```json
{
  "caching": {},
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "mtls": {
    "ca_certificate_id": "*string*",
    "mtls_certificate_id": "*string*",
    "sslmode": "*string*"
  },
  "name": "*string*",
  "origin": {},
  "origin_connection_limit": "*integer*"
}
```

#### 4XX Create Hyperdrive Failure Response.

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



## List Hyperdrives

**GET** `/accounts/{account_id}/hyperdrive/configs`

Returns a list of Hyperdrives.

### Responses

#### 200 List Hyperdrives Response.

> Data is at `body["result"]`

```json
[
  {
    "caching": {},
    "created_on": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "mtls": {
      "ca_certificate_id": "*string*",
      "mtls_certificate_id": "*string*",
      "sslmode": "*string*"
    },
    "name": "*string*",
    "origin": {},
    "origin_connection_limit": "*integer*"
  }
]
```

#### 4XX List Hyperdrives Failure Response.

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



## Update Hyperdrive

**PUT** `/accounts/{account_id}/hyperdrive/configs/{hyperdrive_id}`

Updates and returns the specified Hyperdrive configuration.

### Responses

#### 200 Update Hyperdrive Response.

> Data is at `body["result"]`

```json
{
  "caching": {},
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "mtls": {
    "ca_certificate_id": "*string*",
    "mtls_certificate_id": "*string*",
    "sslmode": "*string*"
  },
  "name": "*string*",
  "origin": {},
  "origin_connection_limit": "*integer*"
}
```

#### 4XX Update Hyperdrive Failure Response.

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



## Patch Hyperdrive

**PATCH** `/accounts/{account_id}/hyperdrive/configs/{hyperdrive_id}`

Patches and returns the specified Hyperdrive configuration. Custom caching settings are not kept if caching is disabled.

### Responses

#### 200 Patch Hyperdrive Response.

> Data is at `body["result"]`

```json
{
  "caching": {},
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "mtls": {
    "ca_certificate_id": "*string*",
    "mtls_certificate_id": "*string*",
    "sslmode": "*string*"
  },
  "name": "*string*",
  "origin": {},
  "origin_connection_limit": "*integer*"
}
```

#### 4XX Patch Hyperdrive Failure Response.

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



## Get Hyperdrive

**GET** `/accounts/{account_id}/hyperdrive/configs/{hyperdrive_id}`

Returns the specified Hyperdrive configuration.

### Responses

#### 200 Get Hyperdrive Response.

> Data is at `body["result"]`

```json
{
  "caching": {},
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "mtls": {
    "ca_certificate_id": "*string*",
    "mtls_certificate_id": "*string*",
    "sslmode": "*string*"
  },
  "name": "*string*",
  "origin": {},
  "origin_connection_limit": "*integer*"
}
```

#### 4XX Get Hyperdrive Failure.

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



## Delete Hyperdrive

**DELETE** `/accounts/{account_id}/hyperdrive/configs/{hyperdrive_id}`

Deletes the specified Hyperdrive.

### Responses

#### 200 Delete Hyperdrive Response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete Hyperdrive Failure.

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


