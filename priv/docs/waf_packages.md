# WAF packages

## List WAF packages

**GET** `/zones/{zone_id}/firewall/waf/packages`

Fetches WAF packages for a zone.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 List WAF packages response

> Data is at `body["result"]`

```json
null
```

#### 4XX List WAF packages response failure

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



## Update a WAF package

**PATCH** `/zones/{zone_id}/firewall/waf/packages/{package_id}`

Updates a WAF package. You can update the sensitivity and the action of an anomaly detection WAF package.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Update a WAF package response

> Data is at `body["result"]`

```json
{
  "action_mode": "*string*",
  "description": "*string*",
  "detection_mode": "*string*",
  "id": "*string*",
  "name": "*string*",
  "sensitivity": "*string*",
  "status": "*string*",
  "zone_id": "*string*"
}
```

#### 4XX Update a WAF package response failure

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



## Get a WAF package

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}`

Fetches the details of a WAF package.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

### Responses

#### 200 Get a WAF package response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a WAF package response failure

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


