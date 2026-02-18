# Connectivity Services

## Create connectivity service

**POST** `/accounts/{account_id}/connectivity/directory/services`



### Responses

#### 200 Successfully created connectivity service

> Data is at `body["result"]`

```json
null
```

#### 4XX Failed to create connectivity service

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



## List connectivity services

**GET** `/accounts/{account_id}/connectivity/directory/services`



### Responses

#### 200 Successfully retrieved connectivity services

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Failed to retrieve connectivity services

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



## Update connectivity service

**PUT** `/accounts/{account_id}/connectivity/directory/services/{service_id}`



### Responses

#### 200 Successfully updated connectivity service

> Data is at `body["result"]`

```json
null
```

#### 4XX Failed to update connectivity service

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



## Get connectivity service

**GET** `/accounts/{account_id}/connectivity/directory/services/{service_id}`



### Responses

#### 200 Successfully retrieved connectivity service

> Data is at `body["result"]`

```json
null
```

#### 4XX Failed to retrieve connectivity service

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



## Delete connectivity service

**DELETE** `/accounts/{account_id}/connectivity/directory/services/{service_id}`



### Responses

#### 200 Successfully deleted connectivity service

> Data is at `body["result"]`

```json

```

#### 4XX Failed to delete connectivity service

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


