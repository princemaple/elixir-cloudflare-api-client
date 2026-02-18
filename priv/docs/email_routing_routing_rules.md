# Email Routing routing rules

## Create routing rule

**POST** `/zones/{zone_id}/email/routing/rules`

Rules consist of a set of criteria for matching emails (such as an email being sent to a specific custom email address) plus a set of actions to take on the email (like forwarding it to a specific destination address).

### Responses

#### 200 Create routing rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    {
      "type": "*string*",
      "value": [
        null
      ]
    }
  ],
  "enabled": "*boolean*",
  "id": "*string*",
  "matchers": [
    {
      "field": "*string*",
      "type": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "priority": "*number*",
  "tag": "*string*"
}
```



## List routing rules

**GET** `/zones/{zone_id}/email/routing/rules`

Lists existing routing rules.

### Responses

#### 200 List routing rules response

> Data is at `body["result"]`

```json
[
  {
    "actions": [
      null
    ],
    "enabled": "*boolean*",
    "id": "*string*",
    "matchers": [
      null
    ],
    "name": "*string*",
    "priority": "*number*",
    "tag": "*string*"
  }
]
```



## Update catch-all rule

**PUT** `/zones/{zone_id}/email/routing/rules/catch_all`

Enable or disable catch-all routing rule, or change action to forward to specific destination address.

### Responses

#### 200 Update catch-all rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    {
      "type": "*string*",
      "value": [
        null
      ]
    }
  ],
  "enabled": "*boolean*",
  "id": "*string*",
  "matchers": [
    {
      "type": "*string*"
    }
  ],
  "name": "*string*",
  "tag": "*string*"
}
```



## Get catch-all rule

**GET** `/zones/{zone_id}/email/routing/rules/catch_all`

Get information on the default catch-all routing rule.

### Responses

#### 200 Get catch-all rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    {
      "type": "*string*",
      "value": [
        null
      ]
    }
  ],
  "enabled": "*boolean*",
  "id": "*string*",
  "matchers": [
    {
      "type": "*string*"
    }
  ],
  "name": "*string*",
  "tag": "*string*"
}
```



## Update routing rule

**PUT** `/zones/{zone_id}/email/routing/rules/{rule_identifier}`

Update actions and matches, or enable/disable specific routing rules.

### Responses

#### 200 Update routing rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    {
      "type": "*string*",
      "value": [
        null
      ]
    }
  ],
  "enabled": "*boolean*",
  "id": "*string*",
  "matchers": [
    {
      "field": "*string*",
      "type": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "priority": "*number*",
  "tag": "*string*"
}
```



## Get routing rule

**GET** `/zones/{zone_id}/email/routing/rules/{rule_identifier}`

Get information for a specific routing rule already created.

### Responses

#### 200 Get routing rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    {
      "type": "*string*",
      "value": [
        null
      ]
    }
  ],
  "enabled": "*boolean*",
  "id": "*string*",
  "matchers": [
    {
      "field": "*string*",
      "type": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "priority": "*number*",
  "tag": "*string*"
}
```



## Delete routing rule

**DELETE** `/zones/{zone_id}/email/routing/rules/{rule_identifier}`

Delete a specific routing rule.

### Responses

#### 200 Delete routing rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    {
      "type": "*string*",
      "value": [
        null
      ]
    }
  ],
  "enabled": "*boolean*",
  "id": "*string*",
  "matchers": [
    {
      "field": "*string*",
      "type": "*string*",
      "value": "*string*"
    }
  ],
  "name": "*string*",
  "priority": "*number*",
  "tag": "*string*"
}
```


