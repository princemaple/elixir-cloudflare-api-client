# IP Address Management Prefix Delegation

## Create Prefix Delegation

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/delegations`

Create a new account delegation for a given IP prefix.

### Responses

#### 200 Create Prefix Delegation response

> Data is at `body["result"]`

```json
{
  "cidr": "*string*",
  "created_at": "*string*",
  "delegated_account_id": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "parent_prefix_id": "*string*"
}
```

#### 4XX Create Prefix Delegation response failure

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



## List Prefix Delegations

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/delegations`

List all delegations for a given account IP prefix.

### Responses

#### 200 List Prefix Delegations response

> Data is at `body["result"]`

```json
[
  {
    "cidr": "*string*",
    "created_at": "*string*",
    "delegated_account_id": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "parent_prefix_id": "*string*"
  }
]
```

#### 4XX List Prefix Delegations response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Delete Prefix Delegation

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/delegations/{delegation_id}`

Delete an account delegation for a given IP prefix.

### Responses

#### 200 Delete Prefix Delegation response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Prefix Delegation response failure

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


