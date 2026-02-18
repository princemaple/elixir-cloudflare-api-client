# Audit Logs

## Get account audit logs

**GET** `/accounts/{account_id}/audit_logs`

Gets a list of audit logs for an account. Can be filtered by who made the change, on which zone, and the timeframe of the change.

### Responses

#### 200 Get account audit logs response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get account audit logs response failure

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



## Get account audit logs (Version 2, Beta release)

**GET** `/accounts/{account_id}/logs/audit`

Gets a list of audit logs for an account. <br />  <br /> This is the beta release of Audit Logs Version 2. Since this is a beta version, there may be gaps or missing entries in the available audit logs. Be aware of the following limitations.  <br /> <ul> <li>Audit logs are available only for the past 30 days. <br /></li> <li>Error handling is not yet implemented.  <br /> </li> </ul>

### Responses

#### 200 Get account audit logs successful response

> Data is at `body["result"]`

```json
[
  {
    "account": {
      "id": "*string*",
      "name": "*string*"
    },
    "action": {
      "description": "*string*",
      "result": "*string*",
      "time": "*string*",
      "type": "*string*"
    },
    "actor": {
      "context": "*string*",
      "email": "*string*",
      "id": "*string*",
      "ip_address": "*string*",
      "token_id": "*string*",
      "token_name": "*string*",
      "type": "*string*"
    },
    "id": "*string*",
    "raw": {
      "cf_ray_id": "*string*",
      "method": "*string*",
      "status_code": "*integer*",
      "uri": "*string*",
      "user_agent": "*string*"
    },
    "resource": {
      "id": "*string*",
      "product": "*string*",
      "request": {},
      "response": {},
      "scope": {},
      "type": "*string*"
    },
    "zone": {
      "id": "*string*",
      "name": "*string*"
    }
  }
]
```

#### 4XX Get account audit logs failed response

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get user audit logs

**GET** `/user/audit_logs`

Gets a list of audit logs for a user account. Can be filtered by who made the change, on which zone, and the timeframe of the change.

### Responses

#### 200 Get user audit logs response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get user audit logs response failure

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


