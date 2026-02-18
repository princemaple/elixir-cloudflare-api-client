# Custom Indicator Feeds

## Create new indicator feed

**POST** `/accounts/{account_id}/intel/indicator-feeds`



### Responses

#### 200 Create indicator feed response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get indicator feeds failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get indicator feeds owned by this account

**GET** `/accounts/{account_id}/intel/indicator-feeds`



### Responses

#### 200 Get indicator feeds response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Grant permission to indicator feed

**PUT** `/accounts/{account_id}/intel/indicator-feeds/permissions/add`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json
null
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Revoke permission to indicator feed

**PUT** `/accounts/{account_id}/intel/indicator-feeds/permissions/remove`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json
null
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List indicator feed permissions

**GET** `/accounts/{account_id}/intel/indicator-feeds/permissions/view`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update indicator feed metadata

**PUT** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}`



### Responses

#### 200 Get update public field response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get update public field response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get indicator feed metadata

**GET** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json
null
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get indicator feed data

**GET** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}/data`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json

```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Download indicator feed data

**GET** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}/download`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json
null
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update indicator feed data

**PUT** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}/snapshot`



### Responses

#### 200 Get indicator feed metadata

> Data is at `body["result"]`

```json
null
```

#### 4XX Get indicator feeds response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


