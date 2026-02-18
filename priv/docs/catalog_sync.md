# Catalog Sync

## Create Catalog Sync

**POST** `/accounts/{account_id}/magic/cloud/catalog-syncs`

Create a new Catalog Sync (Closed Beta).

### Responses

#### 201 Created.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "destination_id": "*string*",
  "destination_type": "*string*",
  "errors": {},
  "id": "*string*",
  "includes_discoveries_until": "*string*",
  "last_attempted_update_at": "*string*",
  "last_successful_update_at": "*string*",
  "last_user_update_at": "*string*",
  "name": "*string*",
  "policy": "*string*",
  "update_mode": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Conflict.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 422 Unprocessable Entity.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Catalog Syncs

**GET** `/accounts/{account_id}/magic/cloud/catalog-syncs`

List Catalog Syncs (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "destination_id": "*string*",
    "destination_type": "*string*",
    "errors": {},
    "id": "*string*",
    "includes_discoveries_until": "*string*",
    "last_attempted_update_at": "*string*",
    "last_successful_update_at": "*string*",
    "last_user_update_at": "*string*",
    "name": "*string*",
    "policy": "*string*",
    "update_mode": "*string*"
  }
]
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Prebuilt Policies

**GET** `/accounts/{account_id}/magic/cloud/catalog-syncs/prebuilt-policies`

List prebuilt catalog sync policies (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
[
  {
    "applicable_destinations": [
      "*string*"
    ],
    "policy_description": "*string*",
    "policy_name": "*string*",
    "policy_string": "*string*"
  }
]
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update Catalog Sync

**PUT** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Update a Catalog Sync (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "destination_id": "*string*",
  "destination_type": "*string*",
  "errors": {},
  "id": "*string*",
  "includes_discoveries_until": "*string*",
  "last_attempted_update_at": "*string*",
  "last_successful_update_at": "*string*",
  "last_user_update_at": "*string*",
  "name": "*string*",
  "policy": "*string*",
  "update_mode": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Conflict.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 422 Unprocessable Entity.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Patch Catalog Sync

**PATCH** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Update a Catalog Sync (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "destination_id": "*string*",
  "destination_type": "*string*",
  "errors": {},
  "id": "*string*",
  "includes_discoveries_until": "*string*",
  "last_attempted_update_at": "*string*",
  "last_successful_update_at": "*string*",
  "last_user_update_at": "*string*",
  "name": "*string*",
  "policy": "*string*",
  "update_mode": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Conflict.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 422 Unprocessable Entity.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Read Catalog Sync

**GET** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Read a Catalog Sync (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "destination_id": "*string*",
  "destination_type": "*string*",
  "errors": {},
  "id": "*string*",
  "includes_discoveries_until": "*string*",
  "last_attempted_update_at": "*string*",
  "last_successful_update_at": "*string*",
  "last_user_update_at": "*string*",
  "name": "*string*",
  "policy": "*string*",
  "update_mode": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete Catalog Sync

**DELETE** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Delete a Catalog Sync (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Conflict.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Run Catalog Sync

**POST** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}/refresh`

Refresh a Catalog Sync's destination by running the sync policy against latest resource catalog (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
"*string*"
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Invalid Credentials.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Conflict.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 422 Unprocessable Entity.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "meta": {
        "l10n_key": null,
        "loggable_error": null,
        "template_data": null,
        "trace_id": null
      },
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


