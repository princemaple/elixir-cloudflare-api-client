# Device DEX Tests

## Create Device DEX test

**POST** `/accounts/{account_id}/dex/devices/dex_tests`

Create a DEX test.

### Responses

#### 200 Update Dex test response

> Data is at `body["result"]`

```json
{
  "data": {
    "host": "*string*",
    "kind": "*string*",
    "method": "*string*"
  },
  "description": "*string*",
  "enabled": "*boolean*",
  "interval": "*string*",
  "name": "*string*",
  "target_policies": [
    {
      "default": "*boolean*",
      "id": null,
      "name": "*string*"
    }
  ],
  "targeted": "*boolean*",
  "test_id": "*string*"
}
```

#### 4XX Update Dex test response failure

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



## List Device DEX tests

**GET** `/accounts/{account_id}/dex/devices/dex_tests`

Fetch all DEX tests

### Responses

#### 200 Device DEX test details response

> Data is at `body["result"]`

```json
[
  {
    "data": {
      "host": "*string*",
      "kind": "*string*",
      "method": "*string*"
    },
    "description": "*string*",
    "enabled": "*boolean*",
    "interval": "*string*",
    "name": "*string*",
    "target_policies": [
      null
    ],
    "targeted": "*boolean*",
    "test_id": "*string*"
  }
]
```

#### 4XX Device DEX test response failure

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



## Update Device DEX test

**PUT** `/accounts/{account_id}/dex/devices/dex_tests/{dex_test_id}`

Update a DEX test.

### Responses

#### 200 Update Dex test response

> Data is at `body["result"]`

```json
{
  "data": {
    "host": "*string*",
    "kind": "*string*",
    "method": "*string*"
  },
  "description": "*string*",
  "enabled": "*boolean*",
  "interval": "*string*",
  "name": "*string*",
  "target_policies": [
    {
      "default": "*boolean*",
      "id": null,
      "name": "*string*"
    }
  ],
  "targeted": "*boolean*",
  "test_id": "*string*"
}
```

#### 4XX Update Dex test response failure

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



## Get Device DEX test

**GET** `/accounts/{account_id}/dex/devices/dex_tests/{dex_test_id}`

Fetch a single DEX test.

### Responses

#### 200 Device DEX test details response

> Data is at `body["result"]`

```json
{
  "data": {
    "host": "*string*",
    "kind": "*string*",
    "method": "*string*"
  },
  "description": "*string*",
  "enabled": "*boolean*",
  "interval": "*string*",
  "name": "*string*",
  "target_policies": [
    {
      "default": "*boolean*",
      "id": null,
      "name": "*string*"
    }
  ],
  "targeted": "*boolean*",
  "test_id": "*string*"
}
```

#### 4XX Device DEX test response failure

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



## Delete Device DEX test

**DELETE** `/accounts/{account_id}/dex/devices/dex_tests/{dex_test_id}`

Delete a Device DEX test. Returns the remaining device dex tests for the account.

### Responses

#### 200 Delete Device DEX test response

> Data is at `body["result"]`

```json
{
  "dex_tests": [
    {
      "data": {
        "host": null,
        "kind": null,
        "method": null
      },
      "description": "*string*",
      "enabled": "*boolean*",
      "interval": "*string*",
      "name": "*string*",
      "target_policies": [
        null
      ],
      "targeted": "*boolean*",
      "test_id": "*string*"
    }
  ]
}
```

#### 4XX Delete DEX test response failure

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


