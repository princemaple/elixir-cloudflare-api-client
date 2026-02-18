# Access application-scoped policies

## Create an Access application policy

**POST** `/accounts/{account_id}/access/apps/{app_id}/policies`

Creates a policy applying exclusive to a single application that defines the users or groups who can reach it. We recommend creating a reusable policy instead and subsequently referencing its ID in the application's 'policies' array.

### Responses

#### 201 Create an Access application policy response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "name": "*string*",
  "precedence": "*integer*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Create an Access application policy response failure.

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



## List Access application policies

**GET** `/accounts/{account_id}/access/apps/{app_id}/policies`

Lists Access policies configured for an application. Returns both exclusively scoped and reusable policies used by the application.

### Responses

#### 200 List Access application policies response

> Data is at `body["result"]`

```json
[
  {
    "precedence": "*integer*"
  }
]
```

#### 4XX List Access application policies response failure

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



## Update an Access application policy

**PUT** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`

Updates an Access policy specific to an application. To update a reusable policy, use the /accounts/{account_id}/policies/{uid} endpoint.

### Responses

#### 200 Update an Access application policy response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "name": "*string*",
  "precedence": "*integer*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Update an Access application policy response failure.

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



## Get an Access application policy

**GET** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`

Fetches a single Access policy configured for an application. Returns both exclusively owned and reusable policies used by the application.

### Responses

#### 200 Get an Access policy response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "decision": "*string*",
  "exclude": [
    {}
  ],
  "id": "*string*",
  "include": [
    {}
  ],
  "name": "*string*",
  "precedence": "*integer*",
  "require": [
    {}
  ],
  "updated_at": "*string*"
}
```

#### 4XX Get an Access policy response failure.

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



## Delete an Access application policy

**DELETE** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`

Deletes an Access policy specific to an application. To delete a reusable policy, use the /accounts/{account_id}/policies/{uid} endpoint.

### Responses

#### 202 Delete an Access application policy response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an Access application policy response failure.

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



## Convert an Access application policy to a reusable policy

**PUT** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}/make_reusable`

Converts an application-scoped policy to a reusable policy. The policy will no longer be exclusively scoped to the application. Further updates to the policy should go through the /accounts/{account_id}/policies/{uid} endpoint.

### Responses

#### 200 Convert an Access application policy to a reusable policy

> Data is at `body["result"]`

```json
[
  {
    "precedence": "*integer*"
  }
]
```

#### 4XX Convert an Access application policy to a reusable policy failure.

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


