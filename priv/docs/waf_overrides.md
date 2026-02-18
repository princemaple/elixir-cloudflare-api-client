# WAF overrides

## Create a WAF override

**POST** `/zones/{zone_id}/firewall/waf/overrides`

Creates a URI-based WAF override for a zone.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Create a WAF override response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "groups": {},
  "id": "*string*",
  "paused": "*boolean*",
  "priority": "*number*",
  "rewrite_action": {
    "block": null,
    "challenge": null,
    "default": null,
    "disable": null,
    "simulate": null
  },
  "rules": {},
  "urls": [
    "*string*"
  ]
}
```

#### 4XX Create a WAF override response failure

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



## List WAF overrides

**GET** `/zones/{zone_id}/firewall/waf/overrides`

Fetches the URI-based WAF overrides in a zone.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 List WAF overrides response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "groups": {},
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "rewrite_action": {
      "block": null,
      "challenge": null,
      "default": null,
      "disable": null,
      "simulate": null
    },
    "rules": {},
    "urls": [
      "*string*"
    ]
  }
]
```

#### 4XX List WAF overrides response failure

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
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update WAF override

**PUT** `/zones/{zone_id}/firewall/waf/overrides/{overrides_id}`

Updates an existing URI-based WAF override.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Update WAF override response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "groups": {},
  "id": "*string*",
  "paused": "*boolean*",
  "priority": "*number*",
  "rewrite_action": {
    "block": null,
    "challenge": null,
    "default": null,
    "disable": null,
    "simulate": null
  },
  "rules": {},
  "urls": [
    "*string*"
  ]
}
```

#### 4XX Update WAF override response failure

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



## Get a WAF override

**GET** `/zones/{zone_id}/firewall/waf/overrides/{overrides_id}`

Fetches the details of a URI-based WAF override.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Get a WAF override response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "groups": {},
  "id": "*string*",
  "paused": "*boolean*",
  "priority": "*number*",
  "rewrite_action": {
    "block": null,
    "challenge": null,
    "default": null,
    "disable": null,
    "simulate": null
  },
  "rules": {},
  "urls": [
    "*string*"
  ]
}
```

#### 4XX Get a WAF override response failure

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



## Delete a WAF override

**DELETE** `/zones/{zone_id}/firewall/waf/overrides/{overrides_id}`

Deletes an existing URI-based WAF override.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Delete a WAF override response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a WAF override response failure

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


