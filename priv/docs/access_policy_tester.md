# Access policy tester

## Start Access policy test

**POST** `/accounts/{account_id}/access/policy-tests`

Starts an Access policy test.

### Responses

#### 200 Start Access policy test response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "status": "*string*"
}
```

#### 400 Start Access policy test response failure.

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



## Get the current status of a given Access policy test

**GET** `/accounts/{account_id}/access/policy-tests/{policy_test_id}`

Fetches the current status of a given Access policy test.

### Responses

#### 200 Get an Access policy test update response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "percent_approved": "*integer*",
  "percent_blocked": "*integer*",
  "percent_errored": "*integer*",
  "percent_users_processed": "*integer*",
  "status": "*string*",
  "total_users": "*integer*",
  "users_approved": "*integer*",
  "users_blocked": "*integer*",
  "users_errored": "*integer*"
}
```

#### 400 Get an Access policy test update response failure.

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



## Get an Access policy test users page

**GET** `/accounts/{account_id}/access/policy-tests/{policy_test_id}/users`

Fetches a single page of user results from an Access policy test.

### Responses

#### 200 Get an Access policy tester users page response.

> Data is at `body["result"]`

```json
[
  {
    "email": "*string*",
    "id": "*string*",
    "name": "*string*",
    "status": "*string*"
  }
]
```

#### 400 Get an Access policy tester users page response failure.

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


