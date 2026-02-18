# Load Balancers

## Create Load Balancer

**POST** `/zones/{zone_id}/load_balancers`

Create a new load balancer.

### Responses

#### 200 Create Load Balancer response.

> Data is at `body["result"]`

```json
{
  "adaptive_routing": {
    "failover_across_pools": "*boolean*"
  },
  "country_pools": {},
  "created_on": "*string*",
  "default_pools": [
    "*string*"
  ],
  "description": "*string*",
  "enabled": "*boolean*",
  "fallback_pool": "*string*",
  "id": "*string*",
  "location_strategy": {
    "mode": "*string*",
    "prefer_ecs": "*string*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "pop_pools": {},
  "proxied": "*boolean*",
  "random_steering": {
    "default_weight": "*number*",
    "pool_weights": {}
  },
  "region_pools": {},
  "rules": [
    {
      "condition": "*string*",
      "disabled": "*boolean*",
      "fixed_response": {
        "content_type": "*string*",
        "location": "*string*",
        "message_body": "*string*",
        "status_code": "*integer*"
      },
      "name": "*string*",
      "overrides": {
        "adaptive_routing": null,
        "country_pools": null,
        "default_pools": null,
        "fallback_pool": null,
        "location_strategy": null,
        "pop_pools": null,
        "random_steering": null,
        "region_pools": null,
        "session_affinity": null,
        "session_affinity_attributes": null,
        "session_affinity_ttl": null,
        "steering_policy": null,
        "ttl": null
      },
      "priority": "*integer*",
      "terminates": "*boolean*"
    }
  ],
  "session_affinity": "*string*",
  "session_affinity_attributes": {
    "drain_duration": "*number*",
    "headers": [
      "*string*"
    ],
    "require_all_headers": "*boolean*",
    "samesite": "*string*",
    "secure": "*string*",
    "zero_downtime_failover": "*string*"
  },
  "session_affinity_ttl": "*number*",
  "steering_policy": "*string*",
  "ttl": "*number*",
  "zone_name": "*string*"
}
```

#### 4XX Create Load Balancer response failure.

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



## List Load Balancers

**GET** `/zones/{zone_id}/load_balancers`

List configured load balancers.

### Responses

#### 200 List Load Balancers response.

> Data is at `body["result"]`

```json
[
  {
    "adaptive_routing": {
      "failover_across_pools": "*boolean*"
    },
    "country_pools": {},
    "created_on": "*string*",
    "default_pools": [
      "*string*"
    ],
    "description": "*string*",
    "enabled": "*boolean*",
    "fallback_pool": "*string*",
    "id": "*string*",
    "location_strategy": {
      "mode": "*string*",
      "prefer_ecs": "*string*"
    },
    "modified_on": "*string*",
    "name": "*string*",
    "networks": [
      "*string*"
    ],
    "pop_pools": {},
    "proxied": "*boolean*",
    "random_steering": {
      "default_weight": "*number*",
      "pool_weights": {}
    },
    "region_pools": {},
    "rules": [
      {
        "condition": null,
        "disabled": null,
        "fixed_response": null,
        "name": null,
        "overrides": null,
        "priority": null,
        "terminates": null
      }
    ],
    "session_affinity": "*string*",
    "session_affinity_attributes": {
      "drain_duration": "*number*",
      "headers": [
        null
      ],
      "require_all_headers": "*boolean*",
      "samesite": "*string*",
      "secure": "*string*",
      "zero_downtime_failover": "*string*"
    },
    "session_affinity_ttl": "*number*",
    "steering_policy": "*string*",
    "ttl": "*number*",
    "zone_name": "*string*"
  }
]
```

#### 4XX List Load Balancers response failure.

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*",
    "total_pages": "*number*"
  },
  "success": "*boolean*"
}
```



## Update Load Balancer

**PUT** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Update a configured load balancer.

### Responses

#### 200 Update Load Balancer response.

> Data is at `body["result"]`

```json
{
  "adaptive_routing": {
    "failover_across_pools": "*boolean*"
  },
  "country_pools": {},
  "created_on": "*string*",
  "default_pools": [
    "*string*"
  ],
  "description": "*string*",
  "enabled": "*boolean*",
  "fallback_pool": "*string*",
  "id": "*string*",
  "location_strategy": {
    "mode": "*string*",
    "prefer_ecs": "*string*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "pop_pools": {},
  "proxied": "*boolean*",
  "random_steering": {
    "default_weight": "*number*",
    "pool_weights": {}
  },
  "region_pools": {},
  "rules": [
    {
      "condition": "*string*",
      "disabled": "*boolean*",
      "fixed_response": {
        "content_type": "*string*",
        "location": "*string*",
        "message_body": "*string*",
        "status_code": "*integer*"
      },
      "name": "*string*",
      "overrides": {
        "adaptive_routing": null,
        "country_pools": null,
        "default_pools": null,
        "fallback_pool": null,
        "location_strategy": null,
        "pop_pools": null,
        "random_steering": null,
        "region_pools": null,
        "session_affinity": null,
        "session_affinity_attributes": null,
        "session_affinity_ttl": null,
        "steering_policy": null,
        "ttl": null
      },
      "priority": "*integer*",
      "terminates": "*boolean*"
    }
  ],
  "session_affinity": "*string*",
  "session_affinity_attributes": {
    "drain_duration": "*number*",
    "headers": [
      "*string*"
    ],
    "require_all_headers": "*boolean*",
    "samesite": "*string*",
    "secure": "*string*",
    "zero_downtime_failover": "*string*"
  },
  "session_affinity_ttl": "*number*",
  "steering_policy": "*string*",
  "ttl": "*number*",
  "zone_name": "*string*"
}
```

#### 4XX Update Load Balancer response failure.

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



## Patch Load Balancer

**PATCH** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Apply changes to an existing load balancer, overwriting the supplied properties.

### Responses

#### 200 Patch Load Balancer response.

> Data is at `body["result"]`

```json
{
  "adaptive_routing": {
    "failover_across_pools": "*boolean*"
  },
  "country_pools": {},
  "created_on": "*string*",
  "default_pools": [
    "*string*"
  ],
  "description": "*string*",
  "enabled": "*boolean*",
  "fallback_pool": "*string*",
  "id": "*string*",
  "location_strategy": {
    "mode": "*string*",
    "prefer_ecs": "*string*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "pop_pools": {},
  "proxied": "*boolean*",
  "random_steering": {
    "default_weight": "*number*",
    "pool_weights": {}
  },
  "region_pools": {},
  "rules": [
    {
      "condition": "*string*",
      "disabled": "*boolean*",
      "fixed_response": {
        "content_type": "*string*",
        "location": "*string*",
        "message_body": "*string*",
        "status_code": "*integer*"
      },
      "name": "*string*",
      "overrides": {
        "adaptive_routing": null,
        "country_pools": null,
        "default_pools": null,
        "fallback_pool": null,
        "location_strategy": null,
        "pop_pools": null,
        "random_steering": null,
        "region_pools": null,
        "session_affinity": null,
        "session_affinity_attributes": null,
        "session_affinity_ttl": null,
        "steering_policy": null,
        "ttl": null
      },
      "priority": "*integer*",
      "terminates": "*boolean*"
    }
  ],
  "session_affinity": "*string*",
  "session_affinity_attributes": {
    "drain_duration": "*number*",
    "headers": [
      "*string*"
    ],
    "require_all_headers": "*boolean*",
    "samesite": "*string*",
    "secure": "*string*",
    "zero_downtime_failover": "*string*"
  },
  "session_affinity_ttl": "*number*",
  "steering_policy": "*string*",
  "ttl": "*number*",
  "zone_name": "*string*"
}
```

#### 4XX Patch Load Balancer response failure.

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



## Load Balancer Details

**GET** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Fetch a single configured load balancer.

### Responses

#### 200 Load Balancer Details response.

> Data is at `body["result"]`

```json
{
  "adaptive_routing": {
    "failover_across_pools": "*boolean*"
  },
  "country_pools": {},
  "created_on": "*string*",
  "default_pools": [
    "*string*"
  ],
  "description": "*string*",
  "enabled": "*boolean*",
  "fallback_pool": "*string*",
  "id": "*string*",
  "location_strategy": {
    "mode": "*string*",
    "prefer_ecs": "*string*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "pop_pools": {},
  "proxied": "*boolean*",
  "random_steering": {
    "default_weight": "*number*",
    "pool_weights": {}
  },
  "region_pools": {},
  "rules": [
    {
      "condition": "*string*",
      "disabled": "*boolean*",
      "fixed_response": {
        "content_type": "*string*",
        "location": "*string*",
        "message_body": "*string*",
        "status_code": "*integer*"
      },
      "name": "*string*",
      "overrides": {
        "adaptive_routing": null,
        "country_pools": null,
        "default_pools": null,
        "fallback_pool": null,
        "location_strategy": null,
        "pop_pools": null,
        "random_steering": null,
        "region_pools": null,
        "session_affinity": null,
        "session_affinity_attributes": null,
        "session_affinity_ttl": null,
        "steering_policy": null,
        "ttl": null
      },
      "priority": "*integer*",
      "terminates": "*boolean*"
    }
  ],
  "session_affinity": "*string*",
  "session_affinity_attributes": {
    "drain_duration": "*number*",
    "headers": [
      "*string*"
    ],
    "require_all_headers": "*boolean*",
    "samesite": "*string*",
    "secure": "*string*",
    "zero_downtime_failover": "*string*"
  },
  "session_affinity_ttl": "*number*",
  "steering_policy": "*string*",
  "ttl": "*number*",
  "zone_name": "*string*"
}
```

#### 4XX Load Balancer Details response failure.

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



## Delete Load Balancer

**DELETE** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Delete a configured load balancer.

### Responses

#### 200 Delete Load Balancer response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Load Balancer response failure.

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


