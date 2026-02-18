# Resource Sharing

## Create a new share

**POST** `/accounts/{account_id}/shares`



### Responses

#### 201 Share created.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create share failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Create share failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List account shares

**GET** `/accounts/{account_id}/shares`

Lists all account shares.

### Responses

#### 200 List account shares response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List account shares response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX List account shares response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a share

**PUT** `/accounts/{account_id}/shares/{share_id}`

Updating is not immediate, an updated share object with a new status will be returned.

### Responses

#### 200 Share updated.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update share failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Update share failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get account share by ID

**GET** `/accounts/{account_id}/shares/{share_id}`

Fetches share by ID.

### Responses

#### 200 Get account share response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get account share response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Get account share response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete a share

**DELETE** `/accounts/{account_id}/shares/{share_id}`

Deletion is not immediate, an updated share object with a new status will be returned.

### Responses

#### 200 Share deleted.

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete share failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Delete share failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a share's recipients

**PUT** `/accounts/{account_id}/shares/{share_id}/recipients`

Changes a share's recipients to match the given list. Returns an error if the share targets an organization.

### Responses

#### 204 Empty body

> Data is at `body["result"]`

```json

```

#### 4XX Update share recipients failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Update share recipients failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create a new share recipient

**POST** `/accounts/{account_id}/shares/{share_id}/recipients`



### Responses

#### 201 Share recipient created.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create share recipient failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Create share recipient failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List share recipients by share ID

**GET** `/accounts/{account_id}/shares/{share_id}/recipients`

List share recipients by share ID.

### Responses

#### 200 List account share recipients response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List account share recipients response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX List account share recipients response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get share recipient by ID

**GET** `/accounts/{account_id}/shares/{share_id}/recipients/{recipient_id}`

Get share recipient by ID.

### Responses

#### 200 Get account share recipient response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get account share recipient response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Get account share recipient response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete a share recipient

**DELETE** `/accounts/{account_id}/shares/{share_id}/recipients/{recipient_id}`

Deletion is not immediate, an updated share recipient object with a new status will be returned.

### Responses

#### 200 Share recipient deleted.

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete share recipient failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Delete share recipient failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create a new share resource

**POST** `/accounts/{account_id}/shares/{share_id}/resources`



### Responses

#### 201 Share resource created.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create share resource failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Create share resource failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List share resources by share ID

**GET** `/accounts/{account_id}/shares/{share_id}/resources`

List share resources by share ID.

### Responses

#### 200 List account share resources response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List account share resources response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX List account share resources response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a share resource

**PUT** `/accounts/{account_id}/shares/{share_id}/resources/{resource_id}`

Update is not immediate, an updated share resource object with a new status will be returned.

### Responses

#### 200 Share resource updated.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update share resource failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Update share resource failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get share resource by ID

**GET** `/accounts/{account_id}/shares/{share_id}/resources/{resource_id}`

Get share resource by ID.

### Responses

#### 200 Get account share resource response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get account share resource response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Get account share resource response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete a share resource

**DELETE** `/accounts/{account_id}/shares/{share_id}/resources/{resource_id}`

Deletion is not immediate, an updated share resource object with a new status will be returned.

### Responses

#### 200 Share resource deleted.

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete share resource failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX Delete share resource failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List organization shares

**GET** `/organizations/{organization_id}/shares`

Lists all organization shares.

### Responses

#### 200 List organization shares response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List organization shares response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 5XX List organization shares response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


