# Cloud Integrations

## Create Cloud Integration

**POST** `/accounts/{account_id}/magic/cloud/providers`

Create a new Cloud Integration (Closed Beta).

### Responses

#### 201 Created.

> Data is at `body["result"]`

```json
{
  "aws_arn": "*string*",
  "azure_subscription_id": "*string*",
  "azure_tenant_id": "*string*",
  "cloud_type": "*string*",
  "description": "*string*",
  "friendly_name": "*string*",
  "gcp_project_id": "*string*",
  "gcp_service_account_email": "*string*",
  "id": "*string*",
  "last_updated": "*string*",
  "lifecycle_state": "*string*",
  "state": "*string*",
  "state_v2": "*string*",
  "status": {
    "credentials_good_since": "*string*",
    "credentials_missing_since": "*string*",
    "credentials_rejected_since": "*string*",
    "discovery_message": "*string*",
    "discovery_message_v2": "*string*",
    "discovery_progress": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "discovery_progress_v2": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "in_use_by": [
      {
        "client_type": null,
        "id": null,
        "name": null
      }
    ],
    "last_discovery_completed_at": "*string*",
    "last_discovery_completed_at_v2": "*string*",
    "last_discovery_started_at": "*string*",
    "last_discovery_started_at_v2": "*string*",
    "last_discovery_status": "*string*",
    "last_discovery_status_v2": "*string*",
    "last_updated": "*string*",
    "regions": [
      "*string*"
    ]
  }
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



## List Cloud Integrations

**GET** `/accounts/{account_id}/magic/cloud/providers`

List Cloud Integrations (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
[
  {
    "aws_arn": "*string*",
    "azure_subscription_id": "*string*",
    "azure_tenant_id": "*string*",
    "cloud_type": "*string*",
    "description": "*string*",
    "friendly_name": "*string*",
    "gcp_project_id": "*string*",
    "gcp_service_account_email": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "lifecycle_state": "*string*",
    "state": "*string*",
    "state_v2": "*string*",
    "status": {
      "credentials_good_since": "*string*",
      "credentials_missing_since": "*string*",
      "credentials_rejected_since": "*string*",
      "discovery_message": "*string*",
      "discovery_message_v2": "*string*",
      "discovery_progress": null,
      "discovery_progress_v2": null,
      "in_use_by": [
        null
      ],
      "last_discovery_completed_at": "*string*",
      "last_discovery_completed_at_v2": "*string*",
      "last_discovery_started_at": "*string*",
      "last_discovery_started_at_v2": "*string*",
      "last_discovery_status": null,
      "last_discovery_status_v2": null,
      "last_updated": "*string*",
      "regions": [
        null
      ]
    }
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



## Run Discovery for All Integrations

**POST** `/accounts/{account_id}/magic/cloud/providers/discover`

Run discovery for all Cloud Integrations in an account (Closed Beta).

### Responses

#### 202 Accepted.

> Data is at `body["result"]`

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
  "success": "*boolean*"
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



## Update Cloud Integration

**PUT** `/accounts/{account_id}/magic/cloud/providers/{provider_id}`

Update a Cloud Integration (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "aws_arn": "*string*",
  "azure_subscription_id": "*string*",
  "azure_tenant_id": "*string*",
  "cloud_type": "*string*",
  "description": "*string*",
  "friendly_name": "*string*",
  "gcp_project_id": "*string*",
  "gcp_service_account_email": "*string*",
  "id": "*string*",
  "last_updated": "*string*",
  "lifecycle_state": "*string*",
  "state": "*string*",
  "state_v2": "*string*",
  "status": {
    "credentials_good_since": "*string*",
    "credentials_missing_since": "*string*",
    "credentials_rejected_since": "*string*",
    "discovery_message": "*string*",
    "discovery_message_v2": "*string*",
    "discovery_progress": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "discovery_progress_v2": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "in_use_by": [
      {
        "client_type": null,
        "id": null,
        "name": null
      }
    ],
    "last_discovery_completed_at": "*string*",
    "last_discovery_completed_at_v2": "*string*",
    "last_discovery_started_at": "*string*",
    "last_discovery_started_at_v2": "*string*",
    "last_discovery_status": "*string*",
    "last_discovery_status_v2": "*string*",
    "last_updated": "*string*",
    "regions": [
      "*string*"
    ]
  }
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



## Patch Cloud Integration

**PATCH** `/accounts/{account_id}/magic/cloud/providers/{provider_id}`

Update a Cloud Integration (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "aws_arn": "*string*",
  "azure_subscription_id": "*string*",
  "azure_tenant_id": "*string*",
  "cloud_type": "*string*",
  "description": "*string*",
  "friendly_name": "*string*",
  "gcp_project_id": "*string*",
  "gcp_service_account_email": "*string*",
  "id": "*string*",
  "last_updated": "*string*",
  "lifecycle_state": "*string*",
  "state": "*string*",
  "state_v2": "*string*",
  "status": {
    "credentials_good_since": "*string*",
    "credentials_missing_since": "*string*",
    "credentials_rejected_since": "*string*",
    "discovery_message": "*string*",
    "discovery_message_v2": "*string*",
    "discovery_progress": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "discovery_progress_v2": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "in_use_by": [
      {
        "client_type": null,
        "id": null,
        "name": null
      }
    ],
    "last_discovery_completed_at": "*string*",
    "last_discovery_completed_at_v2": "*string*",
    "last_discovery_started_at": "*string*",
    "last_discovery_started_at_v2": "*string*",
    "last_discovery_status": "*string*",
    "last_discovery_status_v2": "*string*",
    "last_updated": "*string*",
    "regions": [
      "*string*"
    ]
  }
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



## Read Cloud Integration

**GET** `/accounts/{account_id}/magic/cloud/providers/{provider_id}`

Read a Cloud Integration (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "aws_arn": "*string*",
  "azure_subscription_id": "*string*",
  "azure_tenant_id": "*string*",
  "cloud_type": "*string*",
  "description": "*string*",
  "friendly_name": "*string*",
  "gcp_project_id": "*string*",
  "gcp_service_account_email": "*string*",
  "id": "*string*",
  "last_updated": "*string*",
  "lifecycle_state": "*string*",
  "state": "*string*",
  "state_v2": "*string*",
  "status": {
    "credentials_good_since": "*string*",
    "credentials_missing_since": "*string*",
    "credentials_rejected_since": "*string*",
    "discovery_message": "*string*",
    "discovery_message_v2": "*string*",
    "discovery_progress": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "discovery_progress_v2": {
      "done": "*integer*",
      "total": "*integer*",
      "unit": "*string*"
    },
    "in_use_by": [
      {
        "client_type": null,
        "id": null,
        "name": null
      }
    ],
    "last_discovery_completed_at": "*string*",
    "last_discovery_completed_at_v2": "*string*",
    "last_discovery_started_at": "*string*",
    "last_discovery_started_at_v2": "*string*",
    "last_discovery_status": "*string*",
    "last_discovery_status_v2": "*string*",
    "last_updated": "*string*",
    "regions": [
      "*string*"
    ]
  }
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



## Delete Cloud Integration

**DELETE** `/accounts/{account_id}/magic/cloud/providers/{provider_id}`

Delete a Cloud Integration (Closed Beta).

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



## Run Discovery

**POST** `/accounts/{account_id}/magic/cloud/providers/{provider_id}/discover`

Run discovery for a Cloud Integration (Closed Beta).

### Responses

#### 202 Accepted.

> Data is at `body["result"]`

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
  "success": "*boolean*"
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



## Get Cloud Integration Setup Config

**GET** `/accounts/{account_id}/magic/cloud/providers/{provider_id}/initial_setup`

Get initial configuration to complete Cloud Integration setup (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{}
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


