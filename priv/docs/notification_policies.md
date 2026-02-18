# Notification policies

## Create a Notification policy

**POST** `/accounts/{account_id}/alerting/v3/policies`

Creates a new Notification policy.

### Responses

#### 200 Create a Notification policy response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Create a Notification policy response failure

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
    "id": "*string*"
  },
  "success": "*boolean*"
}
```



## List Notification policies

**GET** `/accounts/{account_id}/alerting/v3/policies`

Get a list of all Notification policies.

### Responses

#### 200 List Notification policies response

> Data is at `body["result"]`

```json
[
  {
    "alert_interval": "*string*",
    "alert_type": "*string*",
    "created": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "filters": {
      "event_source": [
        null
      ],
      "target_hostname": [
        null
      ],
      "protocol": [
        null
      ],
      "group_by": [
        null
      ],
      "event": [
        null
      ],
      "new_status": [
        null
      ],
      "health_check_id": [
        null
      ],
      "tunnel_name": [
        null
      ],
      "affected_asns": [
        null
      ],
      "type": [
        null
      ],
      "traffic_exclusions": [
        null
      ],
      "new_health": [
        null
      ],
      "where": [
        null
      ],
      "requests_per_second": [
        null
      ],
      "pool_id": [
        null
      ],
      "alert_trigger_preferences": [
        null
      ],
      "tunnel_id": [
        null
      ],
      "affected_components": [
        null
      ],
      "status": [
        null
      ],
      "selectors": [
        null
      ],
      "environment": [
        null
      ],
      "target_zone_name": [
        null
      ],
      "query_tag": [
        null
      ],
      "actions": [
        null
      ],
      "zones": [
        null
      ],
      "airport_code": [
        null
      ],
      "slo": [
        null
      ],
      "limit": [
        null
      ],
      "enabled": [
        null
      ],
      "input_id": [
        null
      ],
      "pop_names": [
        null
      ],
      "megabits_per_second": [
        null
      ],
      "alert_trigger_preferences_value": [
        null
      ],
      "affected_locations": [
        null
      ],
      "project_id": [
        null
      ],
      "event_type": [
        null
      ],
      "services": [
        null
      ],
      "logo_tag": [
        null
      ],
      "insight_class": [
        null
      ],
      "incident_impact": [
        null
      ],
      "packets_per_second": [
        null
      ],
      "product": [
        null
      ],
      "target_ip": [
        null
      ]
    },
    "id": "*string*",
    "mechanisms": {
      "email": [
        null
      ],
      "pagerduty": [
        null
      ],
      "webhooks": [
        null
      ]
    },
    "modified": "*string*",
    "name": "*string*"
  }
]
```

#### 4XX List Notification policies response failure

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
  "success": "*boolean*"
}
```



## Update a Notification policy

**PUT** `/accounts/{account_id}/alerting/v3/policies/{policy_id}`

Update a Notification policy.

### Responses

#### 200 Update a Notification policy response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Update a Notification policy response failure

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
    "id": "*string*"
  },
  "success": "*boolean*"
}
```



## Get a Notification policy

**GET** `/accounts/{account_id}/alerting/v3/policies/{policy_id}`

Get details for a single policy.

### Responses

#### 200 Get a Notification policy response

> Data is at `body["result"]`

```json
{
  "alert_interval": "*string*",
  "alert_type": "*string*",
  "created": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "filters": {
    "event_source": [
      "*string*"
    ],
    "target_hostname": [
      "*string*"
    ],
    "protocol": [
      "*string*"
    ],
    "group_by": [
      "*string*"
    ],
    "event": [
      "*string*"
    ],
    "new_status": [
      "*string*"
    ],
    "health_check_id": [
      "*string*"
    ],
    "tunnel_name": [
      "*string*"
    ],
    "affected_asns": [
      "*string*"
    ],
    "type": [
      "*string*"
    ],
    "traffic_exclusions": [
      "*string*"
    ],
    "new_health": [
      "*string*"
    ],
    "where": [
      "*string*"
    ],
    "requests_per_second": [
      "*string*"
    ],
    "pool_id": [
      "*string*"
    ],
    "alert_trigger_preferences": [
      "*string*"
    ],
    "tunnel_id": [
      "*string*"
    ],
    "affected_components": [
      "*string*"
    ],
    "status": [
      "*string*"
    ],
    "selectors": [
      "*string*"
    ],
    "environment": [
      "*string*"
    ],
    "target_zone_name": [
      "*string*"
    ],
    "query_tag": [
      "*string*"
    ],
    "actions": [
      "*string*"
    ],
    "zones": [
      "*string*"
    ],
    "airport_code": [
      "*string*"
    ],
    "slo": [
      "*string*"
    ],
    "limit": [
      "*string*"
    ],
    "enabled": [
      "*string*"
    ],
    "input_id": [
      "*string*"
    ],
    "pop_names": [
      "*string*"
    ],
    "megabits_per_second": [
      "*string*"
    ],
    "alert_trigger_preferences_value": [
      "*string*"
    ],
    "affected_locations": [
      "*string*"
    ],
    "project_id": [
      "*string*"
    ],
    "event_type": [
      "*string*"
    ],
    "services": [
      "*string*"
    ],
    "logo_tag": [
      "*string*"
    ],
    "insight_class": [
      "*string*"
    ],
    "incident_impact": [
      "*string*"
    ],
    "packets_per_second": [
      "*string*"
    ],
    "product": [
      "*string*"
    ],
    "target_ip": [
      "*string*"
    ]
  },
  "id": "*string*",
  "mechanisms": {
    "email": [
      {
        "id": "*string*"
      }
    ],
    "pagerduty": [
      {
        "id": null
      }
    ],
    "webhooks": [
      {
        "id": null
      }
    ]
  },
  "modified": "*string*",
  "name": "*string*"
}
```

#### 4XX Get a Notification policy response failure

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
    "alert_interval": "*string*",
    "alert_type": "*string*",
    "created": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "filters": {
      "event_source": [
        null
      ],
      "target_hostname": [
        null
      ],
      "protocol": [
        null
      ],
      "group_by": [
        null
      ],
      "event": [
        null
      ],
      "new_status": [
        null
      ],
      "health_check_id": [
        null
      ],
      "tunnel_name": [
        null
      ],
      "affected_asns": [
        null
      ],
      "type": [
        null
      ],
      "traffic_exclusions": [
        null
      ],
      "new_health": [
        null
      ],
      "where": [
        null
      ],
      "requests_per_second": [
        null
      ],
      "pool_id": [
        null
      ],
      "alert_trigger_preferences": [
        null
      ],
      "tunnel_id": [
        null
      ],
      "affected_components": [
        null
      ],
      "status": [
        null
      ],
      "selectors": [
        null
      ],
      "environment": [
        null
      ],
      "target_zone_name": [
        null
      ],
      "query_tag": [
        null
      ],
      "actions": [
        null
      ],
      "zones": [
        null
      ],
      "airport_code": [
        null
      ],
      "slo": [
        null
      ],
      "limit": [
        null
      ],
      "enabled": [
        null
      ],
      "input_id": [
        null
      ],
      "pop_names": [
        null
      ],
      "megabits_per_second": [
        null
      ],
      "alert_trigger_preferences_value": [
        null
      ],
      "affected_locations": [
        null
      ],
      "project_id": [
        null
      ],
      "event_type": [
        null
      ],
      "services": [
        null
      ],
      "logo_tag": [
        null
      ],
      "insight_class": [
        null
      ],
      "incident_impact": [
        null
      ],
      "packets_per_second": [
        null
      ],
      "product": [
        null
      ],
      "target_ip": [
        null
      ]
    },
    "id": "*string*",
    "mechanisms": {
      "email": [
        null
      ],
      "pagerduty": [
        null
      ],
      "webhooks": [
        null
      ]
    },
    "modified": "*string*",
    "name": "*string*"
  },
  "success": "*boolean*"
}
```



## Delete a Notification policy

**DELETE** `/accounts/{account_id}/alerting/v3/policies/{policy_id}`

Delete a Notification policy.

### Responses

#### 200 Delete a Notification policy response

> Data is at `body["result"]`

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 4XX Delete a Notification policy response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```


