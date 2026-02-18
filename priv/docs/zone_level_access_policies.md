# Zone-Level Access policies

## Create an Access policy

**POST** `/zones/{zone_id}/access/apps/{app_id}/policies`

Create a new Access policy for an application.

### Responses

#### 201 Create an Access policy response

> Data is at `body["result"]`

```json
{
  "approval_groups": [
    {
      "approvals_needed": "*number*",
      "email_addresses": [
        null
      ],
      "email_list_uuid": "*string*"
    }
  ],
  "approval_required": "*boolean*",
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "isolation_required": "*boolean*",
  "name": "*string*",
  "precedence": "*integer*",
  "purpose_justification_prompt": "*string*",
  "purpose_justification_required": "*boolean*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Create an Access policy response failure

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



## List Access policies

**GET** `/zones/{zone_id}/access/apps/{app_id}/policies`

Lists Access policies configured for an application.

### Responses

#### 200 List Access policies response

> Data is at `body["result"]`

```json
[
  {
    "approval_groups": [
      null
    ],
    "approval_required": "*boolean*",
    "created_at": "*string*",
    "decision": "*string*",
    "exclude": [
      null
    ],
    "id": "*string*",
    "include": [
      null
    ],
    "isolation_required": "*boolean*",
    "name": "*string*",
    "precedence": "*integer*",
    "purpose_justification_prompt": "*string*",
    "purpose_justification_required": "*boolean*",
    "require": [
      null
    ],
    "updated_at": "*string*"
  }
]
```

#### 4XX List Access policies response failure

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



## Update an Access policy

**PUT** `/zones/{zone_id}/access/apps/{app_id}/policies/{policy_id}`

Update a configured Access policy.

### Responses

#### 200 Update an Access policy response

> Data is at `body["result"]`

```json
{
  "approval_groups": [
    {
      "approvals_needed": "*number*",
      "email_addresses": [
        null
      ],
      "email_list_uuid": "*string*"
    }
  ],
  "approval_required": "*boolean*",
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "isolation_required": "*boolean*",
  "name": "*string*",
  "precedence": "*integer*",
  "purpose_justification_prompt": "*string*",
  "purpose_justification_required": "*boolean*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Update an Access policy response failure

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



## Get an Access policy

**GET** `/zones/{zone_id}/access/apps/{app_id}/policies/{policy_id}`

Fetches a single Access policy.

### Responses

#### 200 Get an Access policy response

> Data is at `body["result"]`

```json
{
  "approval_groups": [
    {
      "approvals_needed": "*number*",
      "email_addresses": [
        null
      ],
      "email_list_uuid": "*string*"
    }
  ],
  "approval_required": "*boolean*",
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "isolation_required": "*boolean*",
  "name": "*string*",
  "precedence": "*integer*",
  "purpose_justification_prompt": "*string*",
  "purpose_justification_required": "*boolean*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Get an Access policy response failure

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



## Delete an Access policy

**DELETE** `/zones/{zone_id}/access/apps/{app_id}/policies/{policy_id}`

Delete an Access policy.

### Responses

#### 202 Delete an Access policy response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an Access policy response failure

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


