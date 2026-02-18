# Web Analytics

## Create a Web Analytics site

**POST** `/accounts/{account_id}/rum/site_info`

Creates a new Web Analytics site.

### Responses

#### 200 Created Web Analytics site.

> Data is at `body["result"]`

```json
{
  "auto_install": "*boolean*",
  "created": "*string*",
  "rules": [
    {
      "created": null,
      "host": "*string*",
      "id": null,
      "inclusive": "*boolean*",
      "is_paused": "*boolean*",
      "paths": [
        null
      ],
      "priority": "*number*"
    }
  ],
  "ruleset": {
    "enabled": "*boolean*",
    "id": "*string*",
    "zone_name": "*string*",
    "zone_tag": "*string*"
  },
  "site_tag": "*string*",
  "site_token": "*string*",
  "snippet": "*string*"
}
```

#### 4XX Failure response.

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



## List Web Analytics sites

**GET** `/accounts/{account_id}/rum/site_info/list`

Lists all Web Analytics sites of an account.

### Responses

#### 200 List of Web Analytics sites.

> Data is at `body["result"]`

```json
[
  {
    "auto_install": "*boolean*",
    "created": "*string*",
    "rules": [
      null
    ],
    "ruleset": {
      "enabled": "*boolean*",
      "id": null,
      "zone_name": "*string*",
      "zone_tag": null
    },
    "site_tag": "*string*",
    "site_token": "*string*",
    "snippet": "*string*"
  }
]
```

#### 4XX Failure response.

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



## Update a Web Analytics site

**PUT** `/accounts/{account_id}/rum/site_info/{site_id}`

Updates an existing Web Analytics site.

### Responses

#### 200 Updated Web Analytics site.

> Data is at `body["result"]`

```json
{
  "auto_install": "*boolean*",
  "created": "*string*",
  "rules": [
    {
      "created": null,
      "host": "*string*",
      "id": null,
      "inclusive": "*boolean*",
      "is_paused": "*boolean*",
      "paths": [
        null
      ],
      "priority": "*number*"
    }
  ],
  "ruleset": {
    "enabled": "*boolean*",
    "id": "*string*",
    "zone_name": "*string*",
    "zone_tag": "*string*"
  },
  "site_tag": "*string*",
  "site_token": "*string*",
  "snippet": "*string*"
}
```

#### 4XX Failure response.

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



## Get a Web Analytics site

**GET** `/accounts/{account_id}/rum/site_info/{site_id}`

Retrieves a Web Analytics site.

### Responses

#### 200 Web Analytics site.

> Data is at `body["result"]`

```json
{
  "auto_install": "*boolean*",
  "created": "*string*",
  "rules": [
    {
      "created": null,
      "host": "*string*",
      "id": null,
      "inclusive": "*boolean*",
      "is_paused": "*boolean*",
      "paths": [
        null
      ],
      "priority": "*number*"
    }
  ],
  "ruleset": {
    "enabled": "*boolean*",
    "id": "*string*",
    "zone_name": "*string*",
    "zone_tag": "*string*"
  },
  "site_tag": "*string*",
  "site_token": "*string*",
  "snippet": "*string*"
}
```

#### 4XX Failure response.

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



## Delete a Web Analytics site

**DELETE** `/accounts/{account_id}/rum/site_info/{site_id}`

Deletes an existing Web Analytics site.

### Responses

#### 200 Deleted Web Analytics site identifier.

> Data is at `body["result"]`

```json
{
  "site_tag": "*string*"
}
```

#### 4XX Failure response.

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



## Create a Web Analytics rule

**POST** `/accounts/{account_id}/rum/v2/{ruleset_id}/rule`

Creates a new rule in a Web Analytics ruleset.

### Responses

#### 200 Created Web Analytics rule.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "host": "*string*",
  "id": "*string*",
  "inclusive": "*boolean*",
  "is_paused": "*boolean*",
  "paths": [
    "*string*"
  ],
  "priority": "*number*"
}
```

#### 4XX Failure response.

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



## Update a Web Analytics rule

**PUT** `/accounts/{account_id}/rum/v2/{ruleset_id}/rule/{rule_id}`

Updates a rule in a Web Analytics ruleset.

### Responses

#### 200 Updated Web Analytics rule.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "host": "*string*",
  "id": "*string*",
  "inclusive": "*boolean*",
  "is_paused": "*boolean*",
  "paths": [
    "*string*"
  ],
  "priority": "*number*"
}
```

#### 4XX Failure response.

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



## Delete a Web Analytics rule

**DELETE** `/accounts/{account_id}/rum/v2/{ruleset_id}/rule/{rule_id}`

Deletes an existing rule from a Web Analytics ruleset.

### Responses

#### 200 Deleted Web Analytics rule identifier.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Failure response.

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



## Update Web Analytics rules

**POST** `/accounts/{account_id}/rum/v2/{ruleset_id}/rules`

Modifies one or more rules in a Web Analytics ruleset with a single request.

### Responses

#### 200 List of modified Web Analytics rules.

> Data is at `body["result"]`

```json
{
  "rules": [
    {
      "created": null,
      "host": "*string*",
      "id": null,
      "inclusive": "*boolean*",
      "is_paused": "*boolean*",
      "paths": [
        null
      ],
      "priority": "*number*"
    }
  ],
  "ruleset": {
    "enabled": "*boolean*",
    "id": "*string*",
    "zone_name": "*string*",
    "zone_tag": "*string*"
  }
}
```

#### 4XX Failure response.

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



## List rules in Web Analytics ruleset

**GET** `/accounts/{account_id}/rum/v2/{ruleset_id}/rules`

Lists all the rules in a Web Analytics ruleset.

### Responses

#### 200 List of Web Analytics rules in the ruleset.

> Data is at `body["result"]`

```json
{
  "rules": [
    {
      "created": null,
      "host": "*string*",
      "id": null,
      "inclusive": "*boolean*",
      "is_paused": "*boolean*",
      "paths": [
        null
      ],
      "priority": "*number*"
    }
  ],
  "ruleset": {
    "enabled": "*boolean*",
    "id": "*string*",
    "zone_name": "*string*",
    "zone_tag": "*string*"
  }
}
```

#### 4XX Failure response.

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



## Toggle RUM on/off for a zone

**PATCH** `/zones/{zone_id}/settings/rum`

Toggles RUM on/off for an existing zone.

### Responses

#### 200 Rum toggled on/off for an existing zone.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "value": "*string*"
}
```

#### 4XX Failure response.

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



## Get RUM status for a zone

**GET** `/zones/{zone_id}/settings/rum`

Retrieves RUM status for a zone.

### Responses

#### 200 Rum Status.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "value": "*string*"
}
```

#### 4XX Failure response.

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


