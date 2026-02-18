# Notification destinations with PagerDuty

## List PagerDuty services

**GET** `/accounts/{account_id}/alerting/v3/destinations/pagerduty`

Get a list of all configured PagerDuty services.

### Responses

#### 200 List PagerDuty services response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "name": "*string*"
  }
]
```

#### 4XX List PagerDuty services response failure

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
  "success": "*boolean*"
}
```



## Delete PagerDuty Services

**DELETE** `/accounts/{account_id}/alerting/v3/destinations/pagerduty`

Deletes all the PagerDuty Services connected to the account.

### Responses

#### 200 Delete PagerDuty Services response

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete PagerDuty Services response failure

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
  "success": "*boolean*"
}
```



## Create PagerDuty integration token

**POST** `/accounts/{account_id}/alerting/v3/destinations/pagerduty/connect`

Creates a new token for integrating with PagerDuty.

### Responses

#### 201 Token for PagerDuty integration

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Create a token for PagerDuty integration failure

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
  "result": {
    "id": "*string*"
  },
  "success": "*boolean*"
}
```



## Connect PagerDuty

**GET** `/accounts/{account_id}/alerting/v3/destinations/pagerduty/connect/{token_id}`

Links PagerDuty with the account using the integration token.

### Responses

#### 200 Create a Notification policy response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Create a Notification policy response failure

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
  "result": {
    "id": "*string*"
  },
  "success": "*boolean*"
}
```


