# DNS Firewall

## Create DNS Firewall Cluster

**POST** `/accounts/{account_id}/dns_firewall`

Create a DNS Firewall cluster

### Responses

#### 200 Create DNS Firewall Cluster response

> Data is at `body["result"]`

```json
{
  "attack_mitigation": {
    "enabled": "*boolean*",
    "only_when_upstream_unhealthy": "*boolean*"
  },
  "deprecate_any_requests": "*boolean*",
  "dns_firewall_ips": [
    "*string*"
  ],
  "ecs_fallback": "*boolean*",
  "id": "*string*",
  "maximum_cache_ttl": "*number*",
  "minimum_cache_ttl": "*number*",
  "modified_on": "*string*",
  "name": "*string*",
  "negative_cache_ttl": "*number*",
  "ratelimit": "*number*",
  "retries": "*number*",
  "upstream_ips": [
    "*string*"
  ]
}
```

#### 4XX Create DNS Firewall Cluster response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List DNS Firewall Clusters

**GET** `/accounts/{account_id}/dns_firewall`

List DNS Firewall clusters for an account

### Responses

#### 200 List DNS Firewall Clusters response

> Data is at `body["result"]`

```json
[
  {
    "attack_mitigation": {
      "enabled": "*boolean*",
      "only_when_upstream_unhealthy": "*boolean*"
    },
    "deprecate_any_requests": "*boolean*",
    "dns_firewall_ips": [
      "*string*"
    ],
    "ecs_fallback": "*boolean*",
    "id": "*string*",
    "maximum_cache_ttl": "*number*",
    "minimum_cache_ttl": "*number*",
    "modified_on": "*string*",
    "name": "*string*",
    "negative_cache_ttl": "*number*",
    "ratelimit": "*number*",
    "retries": "*number*",
    "upstream_ips": [
      "*string*"
    ]
  }
]
```

#### 4XX List DNS Firewall Clusters response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update DNS Firewall Cluster

**PATCH** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}`

Modify the configuration of a DNS Firewall cluster

### Responses

#### 200 Update DNS Firewall Cluster response

> Data is at `body["result"]`

```json
{
  "attack_mitigation": {
    "enabled": "*boolean*",
    "only_when_upstream_unhealthy": "*boolean*"
  },
  "deprecate_any_requests": "*boolean*",
  "dns_firewall_ips": [
    "*string*"
  ],
  "ecs_fallback": "*boolean*",
  "id": "*string*",
  "maximum_cache_ttl": "*number*",
  "minimum_cache_ttl": "*number*",
  "modified_on": "*string*",
  "name": "*string*",
  "negative_cache_ttl": "*number*",
  "ratelimit": "*number*",
  "retries": "*number*",
  "upstream_ips": [
    "*string*"
  ]
}
```

#### 4XX Update DNS Firewall Cluster response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## DNS Firewall Cluster Details

**GET** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}`

Show a single DNS Firewall cluster for an account

### Responses

#### 200 DNS Firewall Cluster Details response

> Data is at `body["result"]`

```json
{
  "attack_mitigation": {
    "enabled": "*boolean*",
    "only_when_upstream_unhealthy": "*boolean*"
  },
  "deprecate_any_requests": "*boolean*",
  "dns_firewall_ips": [
    "*string*"
  ],
  "ecs_fallback": "*boolean*",
  "id": "*string*",
  "maximum_cache_ttl": "*number*",
  "minimum_cache_ttl": "*number*",
  "modified_on": "*string*",
  "name": "*string*",
  "negative_cache_ttl": "*number*",
  "ratelimit": "*number*",
  "retries": "*number*",
  "upstream_ips": [
    "*string*"
  ]
}
```

#### 4XX DNS Firewall Cluster Details response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete DNS Firewall Cluster

**DELETE** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}`

Delete a DNS Firewall cluster

### Responses

#### 200 Delete DNS Firewall Cluster response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete DNS Firewall Cluster response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update DNS Firewall Cluster Reverse DNS

**PATCH** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`

Update reverse DNS configuration (PTR records) for a DNS Firewall cluster

### Responses

#### 200 Update DNS Firewall Cluster Reverse DNS response

> Data is at `body["result"]`

```json
{
  "ptr": {}
}
```

#### 4XX Update DNS Firewall Cluster Reverse DNS response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Show DNS Firewall Cluster Reverse DNS

**GET** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`

Show reverse DNS configuration (PTR records) for a DNS Firewall cluster

### Responses

#### 200 Show DNS Firewall Cluster Reverse DNS response

> Data is at `body["result"]`

```json
{
  "ptr": {}
}
```

#### 4XX Show DNS Firewall Cluster Reverse DNS response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


