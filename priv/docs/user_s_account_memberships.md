# User's Account Memberships

## List Memberships

**GET** `/memberships`

List memberships of accounts the user can access.

### Responses

#### 200 List Memberships response

> Data is at `body["result"]`

```json
null
```

#### 4XX List Memberships response failure

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



## Update Membership

**PUT** `/memberships/{membership_id}`

Accept or reject this account invitation.

### Responses

#### 200 Update Membership response

> Data is at `body["result"]`

```json
{
  "account": {
    "created_on": "*string*",
    "id": "*string*",
    "managed_by": {
      "parent_org_id": "*string*",
      "parent_org_name": "*string*"
    },
    "name": "*string*",
    "settings": {
      "abuse_contact_email": "*string*",
      "enforce_twofactor": "*boolean*"
    },
    "type": null
  },
  "api_access_enabled": "*boolean*",
  "id": "*string*",
  "permissions": {
    "analytics": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "billing": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "cache_purge": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "dns": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "dns_records": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "lb": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "logs": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "organization": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "ssl": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "waf": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "zone_settings": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "zones": {
      "read": "*boolean*",
      "write": "*boolean*"
    }
  },
  "policies": [
    null
  ],
  "roles": [
    "*string*"
  ],
  "status": "*string*"
}
```

#### 4XX Update Membership response failure

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



## Membership Details

**GET** `/memberships/{membership_id}`

Get a specific membership.

### Responses

#### 200 Membership Details response

> Data is at `body["result"]`

```json
{
  "account": {
    "created_on": "*string*",
    "id": "*string*",
    "managed_by": {
      "parent_org_id": "*string*",
      "parent_org_name": "*string*"
    },
    "name": "*string*",
    "settings": {
      "abuse_contact_email": "*string*",
      "enforce_twofactor": "*boolean*"
    },
    "type": null
  },
  "api_access_enabled": "*boolean*",
  "id": "*string*",
  "permissions": {
    "analytics": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "billing": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "cache_purge": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "dns": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "dns_records": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "lb": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "logs": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "organization": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "ssl": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "waf": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "zone_settings": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "zones": {
      "read": "*boolean*",
      "write": "*boolean*"
    }
  },
  "policies": [
    null
  ],
  "roles": [
    "*string*"
  ],
  "status": "*string*"
}
```

#### 4XX Membership Details response failure

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



## Delete Membership

**DELETE** `/memberships/{membership_id}`

Remove the associated member from an account.

### Responses

#### 200 Delete Membership response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete Membership response failure

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


