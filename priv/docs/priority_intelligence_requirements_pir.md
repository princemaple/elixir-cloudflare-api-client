# Priority Intelligence Requirements (PIR)

## List Priority Intelligence Requirements

**POST** `/accounts/{account_id}/cloudforce-one/requests/priority`



### Responses

#### 200 List priorities response.

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "id": "*string*",
    "labels": [
      "*string*"
    ],
    "priority": "*integer*",
    "requirement": "*string*",
    "tlp": "*string*",
    "updated": "*string*"
  }
]
```

#### 4XX List priorities response failure.

```json
{
  "errors": {
    "code": "*integer*",
    "message": "*string*"
  },
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
  "success": "*boolean*"
}
```



## Create a New Priority Intelligence Requirement

**POST** `/accounts/{account_id}/cloudforce-one/requests/priority/new`



### Responses

#### 200 Create priority response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "id": "*string*",
  "labels": [
    "*string*"
  ],
  "priority": "*integer*",
  "requirement": "*string*",
  "tlp": "*string*",
  "updated": "*string*"
}
```

#### 4XX Create priority response  failure.

```json
{
  "errors": {
    "code": "*integer*",
    "message": "*string*"
  },
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
  "success": "*boolean*"
}
```



## Get Priority Intelligence Requirement Quota

**GET** `/accounts/{account_id}/cloudforce-one/requests/priority/quota`



### Responses

#### 200 Get priority quota response.

> Data is at `body["result"]`

```json
{
  "anniversary_date": "*string*",
  "quarter_anniversary_date": "*string*",
  "quota": "*integer*",
  "remaining": "*integer*"
}
```

#### 4XX Get priority quota response failure.

```json
{
  "errors": {
    "code": "*integer*",
    "message": "*string*"
  },
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
  "success": "*boolean*"
}
```



## Update a Priority Intelligence Requirement

**PUT** `/accounts/{account_id}/cloudforce-one/requests/priority/{priority_id}`



### Responses

#### 200 Update priority response.

> Data is at `body["result"]`

```json
{
  "completed": "*string*",
  "content": "*string*",
  "created": "*string*",
  "id": "*string*",
  "message_tokens": "*integer*",
  "priority": "*string*",
  "readable_id": "*string*",
  "request": "*string*",
  "status": "*string*",
  "summary": "*string*",
  "tlp": "*string*",
  "tokens": "*integer*",
  "updated": "*string*"
}
```

#### 4XX Update priority response failure.

```json
{
  "errors": {
    "code": "*integer*",
    "message": "*string*"
  },
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
  "success": "*boolean*"
}
```



## Get a Priority Intelligence Requirement

**GET** `/accounts/{account_id}/cloudforce-one/requests/priority/{priority_id}`



### Responses

#### 200 Get priority response.

> Data is at `body["result"]`

```json
{
  "completed": "*string*",
  "content": "*string*",
  "created": "*string*",
  "id": "*string*",
  "message_tokens": "*integer*",
  "priority": "*string*",
  "readable_id": "*string*",
  "request": "*string*",
  "status": "*string*",
  "summary": "*string*",
  "tlp": "*string*",
  "tokens": "*integer*",
  "updated": "*string*"
}
```

#### 4XX Get priority response failure.

```json
{
  "errors": {
    "code": "*integer*",
    "message": "*string*"
  },
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
  "success": "*boolean*"
}
```



## Delete a Priority Intelligence Requirement

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/priority/{priority_id}`



### Responses

#### 200 Delete priority response.

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete priority response failure.

```json
{
  "errors": {
    "code": "*integer*",
    "message": "*string*"
  },
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
  "success": "*boolean*"
}
```


