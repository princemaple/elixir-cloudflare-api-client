# Account Permission Groups

## List Account Permission Groups

**GET** `/accounts/{account_id}/iam/permission_groups`

List all the permissions groups for an account.

### Responses

#### 200 List Permission Groups response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "meta": {
      "key": "*string*",
      "value": "*string*"
    },
    "name": "*string*"
  }
]
```

#### 4XX List Permission Groups response failure

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



## Permission Group Details

**GET** `/accounts/{account_id}/iam/permission_groups/{permission_group_id}`

Get information about a specific permission group in an account.

### Responses

#### 200 Permission Group Details response

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "meta": {
    "key": "*string*",
    "value": "*string*"
  },
  "name": "*string*"
}
```

#### 4XX Permission Group Details response failure

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


