# Resources

## List Resources

**GET** `/accounts/{account_id}/magic/cloud/resources`

List resources in the Resource Catalog (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "cloud_type": "*string*",
    "config": {},
    "deployment_provider": "*string*",
    "id": "*string*",
    "managed": "*boolean*",
    "managed_by": [
      {
        "client_type": null,
        "id": null,
        "name": null
      }
    ],
    "monthly_cost_estimate": {
      "currency": "*string*",
      "monthly_cost": "*number*"
    },
    "name": "*string*",
    "native_id": "*string*",
    "observations": {},
    "provider_ids": [
      "*string*"
    ],
    "provider_names_by_id": {},
    "region": "*string*",
    "resource_group": "*string*",
    "resource_type": "*string*",
    "sections": [
      {
        "help_text": null,
        "hidden_items": null,
        "name": null,
        "visible_items": null
      }
    ],
    "state": {},
    "tags": {},
    "updated_at": "*string*",
    "url": "*string*"
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



## Export Resources

**GET** `/accounts/{account_id}/magic/cloud/resources/export`

Export resources in the Resource Catalog as a JSON file (Closed Beta).

### Responses

#### 200 Exported file.

> Data is at `body["result"]`

```json

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



## Preview Rego Query

**POST** `/accounts/{account_id}/magic/cloud/resources/policy-preview`

Preview Rego query result against the latest resource catalog (Closed Beta).

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



## Read Resource

**GET** `/accounts/{account_id}/magic/cloud/resources/{resource_id}`

Read an resource from the Resource Catalog (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "cloud_type": "*string*",
  "config": {},
  "deployment_provider": "*string*",
  "id": "*string*",
  "managed": "*boolean*",
  "managed_by": [
    {
      "client_type": "*string*",
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "monthly_cost_estimate": {
    "currency": "*string*",
    "monthly_cost": "*number*"
  },
  "name": "*string*",
  "native_id": "*string*",
  "observations": {},
  "provider_ids": [
    "*string*"
  ],
  "provider_names_by_id": {},
  "region": "*string*",
  "resource_group": "*string*",
  "resource_type": "*string*",
  "sections": [
    {
      "help_text": "*string*",
      "hidden_items": [
        null
      ],
      "name": "*string*",
      "visible_items": [
        null
      ]
    }
  ],
  "state": {},
  "tags": {},
  "updated_at": "*string*",
  "url": "*string*"
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


