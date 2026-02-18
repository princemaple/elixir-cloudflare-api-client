# WAF rule groups

## List WAF rule groups

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}/groups`

Fetches the WAF rule groups in a WAF package.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Defines the list WAF rule groups response.

> Data is at `body["result"]`

```json
[
  {
    "allowed_modes": [
      null
    ],
    "description": "*string*",
    "id": "*string*",
    "mode": "*string*",
    "modified_rules_count": "*number*",
    "name": "*string*",
    "package_id": "*string*",
    "rules_count": "*number*"
  }
]
```

#### 4XX Defines the list WAF rule groups response failure.

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



## Update a WAF rule group

**PATCH** `/zones/{zone_id}/firewall/waf/packages/{package_id}/groups/{group_id}`

Updates a WAF rule group. You can update the state (`mode` parameter) of a rule group.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Update a WAF rule group response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update a WAF rule group response failure.

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



## Get a WAF rule group

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}/groups/{group_id}`

Fetches the details of a WAF rule group.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Get a WAF rule group response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get a WAF rule group response failure.

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


