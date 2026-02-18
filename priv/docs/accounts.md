# Accounts

## Create an account

**POST** `/accounts`

Create an account (only available for tenant admins at this time)

### Responses

#### 200 Account Creation Success Response

> Data is at `body["result"]`

```json
{
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
}
```

#### 4XX Account Creation Failure Response

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



## List Accounts

**GET** `/accounts`

List all accounts you have ownership or verified access to.

### Responses

#### 200 List Accounts response

> Data is at `body["result"]`

```json
[
  {
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
  }
]
```

#### 4XX List Accounts response failure

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



## Batch move accounts

**POST** `/accounts/move`

Batch move a collection of accounts to a specific organization. ⚠️ Not implemented.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "statuses": {
    "message": "*string*",
    "moved": "*boolean*",
    "tag": "*string*"
  }
}
```

#### 4XX An unexpected error response.

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



## Update Account

**PUT** `/accounts/{account_id}`

Update an existing account.

### Responses

#### 200 Update Account response

> Data is at `body["result"]`

```json
{
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
}
```

#### 4XX Update Account response failure

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



## Account Details

**GET** `/accounts/{account_id}`

Get information about a specific account that you are a member of.

### Responses

#### 200 Account Details response

> Data is at `body["result"]`

```json
{
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
}
```

#### 4XX Account Details response failure

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



## Delete a specific account

**DELETE** `/accounts/{account_id}`

Delete a specific account (only available for tenant admins at this time). This is a permanent operation that will delete any zones or other resources under the account

### Responses

#### 200 Account Deletion Success Response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Account Deletion Failure Response

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



## Move account

**POST** `/accounts/{account_id}/move`

Move an account within an organization hierarchy or an account outside an organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "destination_organization_id": "*string*",
  "source_organization_id": "*string*"
}
```

#### 4XX An unexpected error response.

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



## List account organizations

**GET** `/accounts/{account_id}/organizations`

Retrieve a list of the organizations that "contain" this account or are
managing it.

The returned list will be in order from "root" to "leaf", where the "leaf"
will be the organization that _immediately_ contains the specified
account.

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "create_time": "*string*",
    "id": "*string*",
    "meta": {
      "flags": null,
      "managed_by": "*string*"
    },
    "name": "*string*",
    "parent": {
      "id": "*string*",
      "name": "*string*"
    },
    "profile": {
      "business_address": "*string*",
      "business_email": "*string*",
      "business_name": "*string*",
      "business_phone": "*string*",
      "external_metadata": "*string*"
    }
  }
]
```

#### 4XX An unexpected error response.

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



## Modify account profile

**PUT** `/accounts/{account_id}/profile`



### Responses

#### 204 There is no content to send for this request, but the headers may be useful.

> Data is at `body["result"]`

```json

```

#### 4XX An unexpected error response.

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



## Get account profile

**GET** `/accounts/{account_id}/profile`



### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "business_address": "*string*",
  "business_email": "*string*",
  "business_name": "*string*",
  "business_phone": "*string*",
  "external_metadata": "*string*"
}
```

#### 4XX An unexpected error response.

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


