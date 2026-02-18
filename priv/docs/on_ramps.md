# On-ramps

## Create On-ramp

**POST** `/accounts/{account_id}/magic/cloud/onramps`

Create a new On-ramp (Closed Beta).

### Responses

#### 201 Created.

> Data is at `body["result"]`

```json
{
  "attached_hubs": [
    "*string*"
  ],
  "attached_vpcs": [
    "*string*"
  ],
  "cloud_asn": "*integer*",
  "cloud_type": "*string*",
  "description": "*string*",
  "dynamic_routing": "*boolean*",
  "hub": "*string*",
  "id": "*string*",
  "install_routes_in_cloud": "*boolean*",
  "install_routes_in_magic_wan": "*boolean*",
  "last_applied_at": "*string*",
  "last_exported_at": "*string*",
  "last_planned_at": "*string*",
  "manage_hub_to_hub_attachments": "*boolean*",
  "manage_vpc_to_hub_attachments": "*boolean*",
  "name": "*string*",
  "planned_monthly_cost_estimate": {
    "currency": "*string*",
    "current_monthly_cost": "*number*",
    "diff": "*number*",
    "proposed_monthly_cost": "*number*"
  },
  "planned_resources": [
    {
      "diff": {
        "diff": null,
        "left_description": null,
        "left_yaml": null,
        "right_description": null,
        "right_yaml": null
      },
      "keys_require_replace": [
        "*string*"
      ],
      "monthly_cost_estimate_diff": {
        "currency": null,
        "current_monthly_cost": null,
        "diff": null,
        "proposed_monthly_cost": null
      },
      "planned_action": "*string*",
      "resource": {
        "cloud_type": null,
        "detail": null,
        "id": null,
        "name": null,
        "resource_type": null,
        "title": null
      }
    }
  ],
  "planned_resources_unavailable": "*boolean*",
  "post_apply_monthly_cost_estimate": {
    "currency": "*string*",
    "monthly_cost": "*number*"
  },
  "post_apply_resources": {},
  "post_apply_resources_unavailable": "*boolean*",
  "region": "*string*",
  "status": {
    "apply_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "lifecycle_errors": {},
    "lifecycle_state": "*string*",
    "plan_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "routes": [
      "*string*"
    ],
    "tunnels": [
      "*string*"
    ]
  },
  "type": "*string*",
  "updated_at": "*string*",
  "vpc": "*string*",
  "vpcs_by_id": {},
  "vpcs_by_id_unavailable": [
    "*string*"
  ]
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



## List On-ramps

**GET** `/accounts/{account_id}/magic/cloud/onramps`

List On-ramps (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
[
  {
    "attached_hubs": [
      "*string*"
    ],
    "attached_vpcs": [
      "*string*"
    ],
    "cloud_asn": "*integer*",
    "cloud_type": "*string*",
    "description": "*string*",
    "dynamic_routing": "*boolean*",
    "hub": "*string*",
    "id": "*string*",
    "install_routes_in_cloud": "*boolean*",
    "install_routes_in_magic_wan": "*boolean*",
    "last_applied_at": "*string*",
    "last_exported_at": "*string*",
    "last_planned_at": "*string*",
    "manage_hub_to_hub_attachments": "*boolean*",
    "manage_vpc_to_hub_attachments": "*boolean*",
    "name": "*string*",
    "planned_monthly_cost_estimate": {
      "currency": "*string*",
      "current_monthly_cost": "*number*",
      "diff": "*number*",
      "proposed_monthly_cost": "*number*"
    },
    "planned_resources": [
      {
        "diff": null,
        "keys_require_replace": null,
        "monthly_cost_estimate_diff": null,
        "planned_action": null,
        "resource": null
      }
    ],
    "planned_resources_unavailable": "*boolean*",
    "post_apply_monthly_cost_estimate": {
      "currency": "*string*",
      "monthly_cost": "*number*"
    },
    "post_apply_resources": {},
    "post_apply_resources_unavailable": "*boolean*",
    "region": "*string*",
    "status": {
      "apply_progress": null,
      "lifecycle_errors": {},
      "lifecycle_state": null,
      "plan_progress": null,
      "routes": [
        null
      ],
      "tunnels": [
        null
      ]
    },
    "type": "*string*",
    "updated_at": "*string*",
    "vpc": "*string*",
    "vpcs_by_id": {},
    "vpcs_by_id_unavailable": [
      "*string*"
    ]
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



## Update Magic WAN Address Space

**PUT** `/accounts/{account_id}/magic/cloud/onramps/magic_wan_address_space`

Update the Magic WAN Address Space (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "prefixes": [
    "*string*"
  ]
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



## Patch Magic WAN Address Space

**PATCH** `/accounts/{account_id}/magic/cloud/onramps/magic_wan_address_space`

Update the Magic WAN Address Space (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "prefixes": [
    "*string*"
  ]
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



## Read Magic WAN Address Space

**GET** `/accounts/{account_id}/magic/cloud/onramps/magic_wan_address_space`

Read the Magic WAN Address Space (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "prefixes": [
    "*string*"
  ]
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



## Update On-ramp

**PUT** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}`

Update an On-ramp (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "attached_hubs": [
    "*string*"
  ],
  "attached_vpcs": [
    "*string*"
  ],
  "cloud_asn": "*integer*",
  "cloud_type": "*string*",
  "description": "*string*",
  "dynamic_routing": "*boolean*",
  "hub": "*string*",
  "id": "*string*",
  "install_routes_in_cloud": "*boolean*",
  "install_routes_in_magic_wan": "*boolean*",
  "last_applied_at": "*string*",
  "last_exported_at": "*string*",
  "last_planned_at": "*string*",
  "manage_hub_to_hub_attachments": "*boolean*",
  "manage_vpc_to_hub_attachments": "*boolean*",
  "name": "*string*",
  "planned_monthly_cost_estimate": {
    "currency": "*string*",
    "current_monthly_cost": "*number*",
    "diff": "*number*",
    "proposed_monthly_cost": "*number*"
  },
  "planned_resources": [
    {
      "diff": {
        "diff": null,
        "left_description": null,
        "left_yaml": null,
        "right_description": null,
        "right_yaml": null
      },
      "keys_require_replace": [
        "*string*"
      ],
      "monthly_cost_estimate_diff": {
        "currency": null,
        "current_monthly_cost": null,
        "diff": null,
        "proposed_monthly_cost": null
      },
      "planned_action": "*string*",
      "resource": {
        "cloud_type": null,
        "detail": null,
        "id": null,
        "name": null,
        "resource_type": null,
        "title": null
      }
    }
  ],
  "planned_resources_unavailable": "*boolean*",
  "post_apply_monthly_cost_estimate": {
    "currency": "*string*",
    "monthly_cost": "*number*"
  },
  "post_apply_resources": {},
  "post_apply_resources_unavailable": "*boolean*",
  "region": "*string*",
  "status": {
    "apply_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "lifecycle_errors": {},
    "lifecycle_state": "*string*",
    "plan_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "routes": [
      "*string*"
    ],
    "tunnels": [
      "*string*"
    ]
  },
  "type": "*string*",
  "updated_at": "*string*",
  "vpc": "*string*",
  "vpcs_by_id": {},
  "vpcs_by_id_unavailable": [
    "*string*"
  ]
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



## Patch On-ramp

**PATCH** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}`

Update an On-ramp (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "attached_hubs": [
    "*string*"
  ],
  "attached_vpcs": [
    "*string*"
  ],
  "cloud_asn": "*integer*",
  "cloud_type": "*string*",
  "description": "*string*",
  "dynamic_routing": "*boolean*",
  "hub": "*string*",
  "id": "*string*",
  "install_routes_in_cloud": "*boolean*",
  "install_routes_in_magic_wan": "*boolean*",
  "last_applied_at": "*string*",
  "last_exported_at": "*string*",
  "last_planned_at": "*string*",
  "manage_hub_to_hub_attachments": "*boolean*",
  "manage_vpc_to_hub_attachments": "*boolean*",
  "name": "*string*",
  "planned_monthly_cost_estimate": {
    "currency": "*string*",
    "current_monthly_cost": "*number*",
    "diff": "*number*",
    "proposed_monthly_cost": "*number*"
  },
  "planned_resources": [
    {
      "diff": {
        "diff": null,
        "left_description": null,
        "left_yaml": null,
        "right_description": null,
        "right_yaml": null
      },
      "keys_require_replace": [
        "*string*"
      ],
      "monthly_cost_estimate_diff": {
        "currency": null,
        "current_monthly_cost": null,
        "diff": null,
        "proposed_monthly_cost": null
      },
      "planned_action": "*string*",
      "resource": {
        "cloud_type": null,
        "detail": null,
        "id": null,
        "name": null,
        "resource_type": null,
        "title": null
      }
    }
  ],
  "planned_resources_unavailable": "*boolean*",
  "post_apply_monthly_cost_estimate": {
    "currency": "*string*",
    "monthly_cost": "*number*"
  },
  "post_apply_resources": {},
  "post_apply_resources_unavailable": "*boolean*",
  "region": "*string*",
  "status": {
    "apply_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "lifecycle_errors": {},
    "lifecycle_state": "*string*",
    "plan_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "routes": [
      "*string*"
    ],
    "tunnels": [
      "*string*"
    ]
  },
  "type": "*string*",
  "updated_at": "*string*",
  "vpc": "*string*",
  "vpcs_by_id": {},
  "vpcs_by_id_unavailable": [
    "*string*"
  ]
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



## Read On-ramp

**GET** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}`

Read an On-ramp (Closed Beta).

### Responses

#### 200 OK.

> Data is at `body["result"]`

```json
{
  "attached_hubs": [
    "*string*"
  ],
  "attached_vpcs": [
    "*string*"
  ],
  "cloud_asn": "*integer*",
  "cloud_type": "*string*",
  "description": "*string*",
  "dynamic_routing": "*boolean*",
  "hub": "*string*",
  "id": "*string*",
  "install_routes_in_cloud": "*boolean*",
  "install_routes_in_magic_wan": "*boolean*",
  "last_applied_at": "*string*",
  "last_exported_at": "*string*",
  "last_planned_at": "*string*",
  "manage_hub_to_hub_attachments": "*boolean*",
  "manage_vpc_to_hub_attachments": "*boolean*",
  "name": "*string*",
  "planned_monthly_cost_estimate": {
    "currency": "*string*",
    "current_monthly_cost": "*number*",
    "diff": "*number*",
    "proposed_monthly_cost": "*number*"
  },
  "planned_resources": [
    {
      "diff": {
        "diff": null,
        "left_description": null,
        "left_yaml": null,
        "right_description": null,
        "right_yaml": null
      },
      "keys_require_replace": [
        "*string*"
      ],
      "monthly_cost_estimate_diff": {
        "currency": null,
        "current_monthly_cost": null,
        "diff": null,
        "proposed_monthly_cost": null
      },
      "planned_action": "*string*",
      "resource": {
        "cloud_type": null,
        "detail": null,
        "id": null,
        "name": null,
        "resource_type": null,
        "title": null
      }
    }
  ],
  "planned_resources_unavailable": "*boolean*",
  "post_apply_monthly_cost_estimate": {
    "currency": "*string*",
    "monthly_cost": "*number*"
  },
  "post_apply_resources": {},
  "post_apply_resources_unavailable": "*boolean*",
  "region": "*string*",
  "status": {
    "apply_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "lifecycle_errors": {},
    "lifecycle_state": "*string*",
    "plan_progress": {
      "done": "*integer*",
      "total": "*integer*"
    },
    "routes": [
      "*string*"
    ],
    "tunnels": [
      "*string*"
    ]
  },
  "type": "*string*",
  "updated_at": "*string*",
  "vpc": "*string*",
  "vpcs_by_id": {},
  "vpcs_by_id_unavailable": [
    "*string*"
  ]
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



## Delete On-ramp

**DELETE** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}`

Delete an On-ramp (Closed Beta).

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



## Apply On-ramp

**POST** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}/apply`

Apply an On-ramp (Closed Beta).

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



## Export as Terraform

**POST** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}/export`

Export an On-ramp to terraform ready file(s) (Closed Beta).

### Responses

#### 201 Exported file.

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



## Plan On-ramp

**POST** `/accounts/{account_id}/magic/cloud/onramps/{onramp_id}/plan`

Plan an On-ramp (Closed Beta).

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


