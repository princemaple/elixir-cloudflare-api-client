# Request for Information (RFI)

## List Requests

**POST** `/accounts/{account_id}/cloudforce-one/requests`



### Responses

#### 200 List requests response.

> Data is at `body["result"]`

```json
[
  {
    "completed": "*string*",
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
]
```

#### 4XX Create response failure.

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



## Get Request Priority, Status, and TLP constants

**GET** `/accounts/{account_id}/cloudforce-one/requests/constants`



### Responses

#### 200 Get request constants response.

> Data is at `body["result"]`

```json
{
  "priority": [
    "*string*"
  ],
  "status": [
    "*string*"
  ],
  "tlp": [
    "*string*"
  ]
}
```

#### 4XX Get request constants response failure.

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



## Create a New Request.

**POST** `/accounts/{account_id}/cloudforce-one/requests/new`

Creating a request adds the request into the Cloudforce One queue for analysis. In addition to the content, a short title, type, priority, and releasability should be provided. If one is not provided, a default will be assigned.

### Responses

#### 200 Create request response.

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

#### 4XX Create response failure.

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



## Get Request Quota

**GET** `/accounts/{account_id}/cloudforce-one/requests/quota`



### Responses

#### 200 Get request quota response.

> Data is at `body["result"]`

```json
{
  "anniversary_date": "*string*",
  "quarter_anniversary_date": "*string*",
  "quota": "*integer*",
  "remaining": "*integer*"
}
```

#### 4XX Get request quota response failure.

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



## Get Request Types

**GET** `/accounts/{account_id}/cloudforce-one/requests/types`



### Responses

#### 200 Get request types response.

> Data is at `body["result"]`

```json
[
  "*string*"
]
```

#### 4XX Get request types response failure.

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



## Update a Request

**PUT** `/accounts/{account_id}/cloudforce-one/requests/{request_id}`

Updating a request alters the request in the Cloudforce One queue. This API may be used to update any attributes of the request after the initial submission. Only fields that you choose to update need to be add to the request body.

### Responses

#### 200 Update request response.

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

#### 4XX Update request response failure.

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



## Get a Request

**GET** `/accounts/{account_id}/cloudforce-one/requests/{request_id}`



### Responses

#### 200 Get request response.

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

#### 4XX Get request response failure.

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



## Delete a Request

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/{request_id}`



### Responses

#### 200 Delete request response.

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

#### 4XX Delete request response failure.

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



## List Request Assets

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset`



### Responses

#### 200 List request assets response.

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "description": "*string*",
    "file_type": "*string*",
    "id": "*integer*",
    "name": "*string*"
  }
]
```

#### 4XX List request assets response failure.

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



## Create a New Request Asset

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/new`



### Responses

#### 200 Create request asset response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "description": "*string*",
  "file_type": "*string*",
  "id": "*integer*",
  "name": "*string*"
}
```

#### 4XX Create request asset response failure.

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



## Update a Request Asset

**PUT** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`



### Responses

#### 200 Update request asset response.

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "description": "*string*",
  "file_type": "*string*",
  "id": "*integer*",
  "name": "*string*"
}
```

#### 4XX Update request asset response failure.

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



## Get a Request Asset

**GET** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`



### Responses

#### 200 Get request asset response.

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "description": "*string*",
    "file_type": "*string*",
    "id": "*integer*",
    "name": "*string*"
  }
]
```

#### 4XX Get request asset response failure.

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



## Delete a Request Asset

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`



### Responses

#### 200 Delete request asset response.

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

#### 4XX Delete request asset response failure.

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



## List Request Messages

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message`



### Responses

#### 200 List request messages response.

> Data is at `body["result"]`

```json
[
  {
    "author": "*string*",
    "content": "*string*",
    "created": "*string*",
    "id": "*integer*",
    "is_follow_on_request": "*boolean*",
    "updated": "*string*"
  }
]
```

#### 4XX List request messages response failure.

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



## Create a New Request Message

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message/new`



### Responses

#### 200 Create request message response.

> Data is at `body["result"]`

```json
{
  "author": "*string*",
  "content": "*string*",
  "created": "*string*",
  "id": "*integer*",
  "is_follow_on_request": "*boolean*",
  "updated": "*string*"
}
```

#### 4XX Create request message response failure.

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



## Update a Request Message

**PUT** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`



### Responses

#### 200 Update request message response.

> Data is at `body["result"]`

```json
{
  "author": "*string*",
  "content": "*string*",
  "created": "*string*",
  "id": "*integer*",
  "is_follow_on_request": "*boolean*",
  "updated": "*string*"
}
```

#### 4XX Update request message response failure.

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



## Delete a Request Message

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`



### Responses

#### 200 Delete request message response.

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

#### 4XX Delete request message response failure.

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


