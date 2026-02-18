# Zero Trust Risk Scoring

## Update configuration for risk behaviors

**PUT** `/accounts/{account_id}/zt_risk_scoring/behaviors`



### Responses

#### 200 Dataset created successfully.

> Data is at `body["result"]`

```json
{
  "behaviors": {}
}
```

#### 4XX Dataset creation failed.

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



## Get all behaviors and associated configuration

**GET** `/accounts/{account_id}/zt_risk_scoring/behaviors`



### Responses

#### 200 Risk scoring behaviors.

> Data is at `body["result"]`

```json
{
  "behaviors": {}
}
```

#### 4XX Failed to get risk scoring behaviors.

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



## Get risk score info for all users in the account

**GET** `/accounts/{account_id}/zt_risk_scoring/summary`



### Responses

#### 200 Risk score for all users in the account.

> Data is at `body["result"]`

```json
{
  "users": [
    {
      "email": "*string*",
      "event_count": "*integer*",
      "last_event": "*string*",
      "max_risk_level": "*string*",
      "name": "*string*",
      "user_id": "*string*"
    }
  ]
}
```

#### 4XX Failed to get risk scores.

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



## Get risk event/score information for a specific user

**GET** `/accounts/{account_id}/zt_risk_scoring/{user_id}`



### Responses

#### 200 Risk events.

> Data is at `body["result"]`

```json
{
  "email": "*string*",
  "events": [
    {
      "event_details": null,
      "id": "*string*",
      "name": "*string*",
      "risk_level": "*string*",
      "timestamp": "*string*"
    }
  ],
  "last_reset_time": "*string*",
  "name": "*string*",
  "risk_level": "*string*"
}
```

#### 4XX Failed to get risk events.

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



## Clear the risk score for a particular user

**POST** `/accounts/{account_id}/zt_risk_scoring/{user_id}/reset`



### Responses

#### 200 Dataset created successfully.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Dataset creation failed.

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


