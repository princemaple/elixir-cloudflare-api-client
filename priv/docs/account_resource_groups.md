# Account Resource Groups

## Create Resource Group

**POST** `/accounts/{account_id}/iam/resource_groups`

Create a new Resource Group under the specified account.

### Responses

#### 200 Add Resource Group response

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "meta": {
    "key": "*string*",
    "value": "*string*"
  },
  "name": "*string*",
  "scope": [
    {
      "key": null,
      "objects": [
        null
      ]
    }
  ]
}
```

#### 4XX Add Resource Group response failure

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



## List Resource Groups

**GET** `/accounts/{account_id}/iam/resource_groups`

List all the resource groups for an account.

### Responses

#### 200 List Resource Groups response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "meta": {
      "key": "*string*",
      "value": "*string*"
    },
    "name": "*string*",
    "scope": [
      {
        "key": null,
        "objects": null
      }
    ]
  }
]
```

#### 4XX List Resource Groups response failure

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



## Update Resource Group

**PUT** `/accounts/{account_id}/iam/resource_groups/{resource_group_id}`

Modify an existing resource group.

### Responses

#### 200 Update Resource Group response

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "meta": {
    "key": "*string*",
    "value": "*string*"
  },
  "name": "*string*",
  "scope": [
    {
      "key": null,
      "objects": [
        null
      ]
    }
  ]
}
```

#### 4XX Update Resource Group response failure

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



## Resource Group Details

**GET** `/accounts/{account_id}/iam/resource_groups/{resource_group_id}`

Get information about a specific resource group in an account.

### Responses

#### 200 Resource Group Details response

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "meta": {
    "key": "*string*",
    "value": "*string*"
  },
  "name": "*string*",
  "scope": [
    {
      "key": null,
      "objects": [
        null
      ]
    }
  ]
}
```

#### 4XX Resource Group Details response failure

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



## Remove Resource Group

**DELETE** `/accounts/{account_id}/iam/resource_groups/{resource_group_id}`

Remove a resource group from an account.

### Responses

#### 200 Remove Resource Group response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Remove Member response failure

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


