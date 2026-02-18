# Scans

## Create a new Scan Config

**POST** `/accounts/{account_id}/cloudforce-one/scans/config`



### Responses

#### 200 Returns the created config.

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "frequency": "*number*",
  "id": "*string*",
  "ips": [
    "*string*"
  ],
  "ports": [
    "*string*"
  ]
}
```

#### 4XX Create a new Scan Config failure.

```json
{
  "errors": {},
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



## List Scan Configs

**GET** `/accounts/{account_id}/cloudforce-one/scans/config`



### Responses

#### 200 Returns all Scan Configs.

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "frequency": "*number*",
    "id": "*string*",
    "ips": [
      "*string*"
    ],
    "ports": [
      "*string*"
    ]
  }
]
```

#### 4XX List Scan Configs failure.

```json
{
  "errors": {},
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



## Update an existing Scan Config

**PATCH** `/accounts/{account_id}/cloudforce-one/scans/config/{config_id}`



### Responses

#### 200 Returns the updated config.

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "frequency": "*number*",
  "id": "*string*",
  "ips": [
    "*string*"
  ],
  "ports": [
    "*string*"
  ]
}
```

#### 4XX Update an Existing Scan Config failure.

```json
{
  "errors": {},
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



## Delete a Scan Config

**DELETE** `/accounts/{account_id}/cloudforce-one/scans/config/{config_id}`



### Responses

#### 200 Delete a Scan Config.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete a Scan Config failure.

```json
{
  "errors": {},
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



## Get the Latest Scan Result

**GET** `/accounts/{account_id}/cloudforce-one/scans/results/{config_id}`



### Responses

#### 200 Returns Current Open Ports.

> Data is at `body["result"]`

```json
{
  "1.1.1.1": [
    {
      "number": "*number*",
      "proto": "*string*",
      "status": "*string*"
    }
  ]
}
```

#### 4XX Get the Latest Scan Result failure.

```json
{
  "errors": {},
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


