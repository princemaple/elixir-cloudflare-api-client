# Organizations

## Create organization

**POST** `/organizations`

Create a new organization for a user. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "create_time": "*string*",
  "id": "*string*",
  "meta": {
    "flags": {
      "account_creation": "*string*",
      "account_deletion": "*string*",
      "account_migration": "*string*",
      "account_mobility": "*string*",
      "sub_org_creation": "*string*"
    },
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



## List organizations the user has access to

**GET** `/organizations`

Retrieve a list of organizations a particular user has access to. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

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



## Modify organization.

**PUT** `/organizations/{organization_id}`

Modify organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "create_time": "*string*",
  "id": "*string*",
  "meta": {
    "flags": {
      "account_creation": "*string*",
      "account_deletion": "*string*",
      "account_migration": "*string*",
      "account_mobility": "*string*",
      "sub_org_creation": "*string*"
    },
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



## Get organization

**GET** `/organizations/{organization_id}`

Retrieve the details of a certain organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "create_time": "*string*",
  "id": "*string*",
  "meta": {
    "flags": {
      "account_creation": "*string*",
      "account_deletion": "*string*",
      "account_migration": "*string*",
      "account_mobility": "*string*",
      "sub_org_creation": "*string*"
    },
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



## Delete organization.

**DELETE** `/organizations/{organization_id}`

Delete an organization. The organization MUST be empty before deleting.
It must not contain any sub-organizations, accounts, members or users. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
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



## Get organization accounts

**GET** `/organizations/{organization_id}/accounts`

Retrieve a list of accounts that belong to a specific organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

### Responses

#### 200 The request has succeeded.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "id": "*string*",
    "name": "*string*",
    "settings": {
      "abuse_contact_email": "*string*",
      "access_approval_expiry": "*string*",
      "api_access_enabled": "*boolean*",
      "default_nameservers": "*string*",
      "enforce_twofactor": "*boolean*",
      "use_account_custom_ns_by_default": "*boolean*"
    },
    "type": "*string*"
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



## Modify organization profile.

**PUT** `/organizations/{organization_id}/profile`

Modify organization profile. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

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



## Get organization profile

**GET** `/organizations/{organization_id}/profile`

Get an organizations profile if it exists. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)

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


