# Page Rules

## Create a Page Rule

**POST** `/zones/{zone_id}/pagerules`

Creates a new Page Rule.

### Responses

#### 200 Create a Page Rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    null
  ],
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "priority": "*integer*",
  "status": "*string*",
  "targets": [
    null
  ]
}
```

#### 4XX Create a Page Rule response failure

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



## List Page Rules

**GET** `/zones/{zone_id}/pagerules`

Fetches Page Rules in a zone.

### Responses

#### 200 List Page Rules response

> Data is at `body["result"]`

```json
[
  {
    "actions": [
      null
    ],
    "created_on": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "priority": "*integer*",
    "status": "*string*",
    "targets": [
      null
    ]
  }
]
```

#### 4XX List Page Rules response failure

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



## Update a Page Rule

**PUT** `/zones/{zone_id}/pagerules/{pagerule_id}`

Replaces the configuration of an existing Page Rule. The configuration of the updated Page Rule will exactly match the data passed in the API request.

### Responses

#### 200 Update a Page Rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    null
  ],
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "priority": "*integer*",
  "status": "*string*",
  "targets": [
    null
  ]
}
```

#### 4XX Update a Page Rule response failure

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



## Edit a Page Rule

**PATCH** `/zones/{zone_id}/pagerules/{pagerule_id}`

Updates one or more fields of an existing Page Rule.

### Responses

#### 200 Edit a Page Rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    null
  ],
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "priority": "*integer*",
  "status": "*string*",
  "targets": [
    null
  ]
}
```

#### 4XX Edit a Page Rule response failure

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



## Get a Page Rule

**GET** `/zones/{zone_id}/pagerules/{pagerule_id}`

Fetches the details of a Page Rule.

### Responses

#### 200 Get a Page Rule response

> Data is at `body["result"]`

```json
{
  "actions": [
    null
  ],
  "created_on": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "priority": "*integer*",
  "status": "*string*",
  "targets": [
    null
  ]
}
```

#### 4XX Get a Page Rule response failure

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



## Delete a Page Rule

**DELETE** `/zones/{zone_id}/pagerules/{pagerule_id}`

Deletes an existing Page Rule.

### Responses

#### 200 Delete a Page Rule response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a Page Rule response failure

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


