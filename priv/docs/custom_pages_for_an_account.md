# Custom pages for an account

## List custom pages

**GET** `/accounts/{account_identifier}/custom_pages`

Fetches all the custom pages at the account level.

### Responses

#### 200 List custom pages response

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "description": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "preview_target": "*string*",
    "required_tokens": [
      "*string*"
    ],
    "state": "*string*",
    "url": "*string*"
  }
]
```

#### 4xx List custom pages response failure

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



## Update a custom page

**PUT** `/accounts/{account_identifier}/custom_pages/{identifier}`

Updates the configuration of an existing custom page.

### Responses

#### 200 Update a custom page response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "preview_target": "*string*",
  "required_tokens": [
    "*string*"
  ],
  "state": "*string*",
  "url": "*string*"
}
```

#### 4xx Update a custom page response failure

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



## Get a custom page

**GET** `/accounts/{account_identifier}/custom_pages/{identifier}`

Fetches the details of a custom page.

### Responses

#### 200 Get a custom page response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "preview_target": "*string*",
  "required_tokens": [
    "*string*"
  ],
  "state": "*string*",
  "url": "*string*"
}
```

#### 4xx Get a custom page response failure

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


