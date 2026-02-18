# DEX Remote Commands

## Create account commands

**POST** `/accounts/{account_id}/dex/commands`

Initiate commands for up to 10 devices per account

### Responses

#### 200 Create commands response

> Data is at `body["result"]`

```json
{
  "commands": [
    {
      "args": {},
      "device_id": "*string*",
      "id": "*string*",
      "status": "*string*",
      "type": "*string*"
    }
  ]
}
```

#### 4XX Create commands failure response

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



## List account commands

**GET** `/accounts/{account_id}/dex/commands`

Retrieves a paginated list of commands issued to devices under the specified account, optionally filtered by time range, device, or other parameters

### Responses

#### 200 Get commands response

> Data is at `body["result"]`

```json
{
  "commands": [
    {
      "completed_date": "*string*",
      "created_date": "*string*",
      "device_id": "*string*",
      "filename": "*string*",
      "id": "*string*",
      "status": "*string*",
      "type": "*string*",
      "user_email": "*string*"
    }
  ]
}
```

#### 4XX Get commands failure response

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



## List devices eligible for remote captures

**GET** `/accounts/{account_id}/dex/commands/devices`

List devices with WARP client support for remote captures which have been connected in the last 1 hour.

### Responses

#### 200 List of eligible devices

> Data is at `body["result"]`

```json
{
  "devices": [
    {
      "deviceId": "*string*",
      "deviceName": "*string*",
      "eligible": "*boolean*",
      "ineligibleReason": "*string*",
      "personEmail": "*string*",
      "platform": "*string*",
      "status": "*string*",
      "timestamp": "*string*",
      "version": "*string*"
    }
  ]
}
```

#### 4XX List eligible devices failure response

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



## Returns account commands usage, quota, and reset time

**GET** `/accounts/{account_id}/dex/commands/quota`

Retrieves the current quota usage and limits for device commands within a specific account, including the time when the quota will reset

### Responses

#### 200 Get commands quota response

> Data is at `body["result"]`

```json
{
  "quota": "*number*",
  "quota_usage": "*number*",
  "reset_time": "*string*"
}
```

#### 4XX Get commands quota failure response

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



## Download command output file

**GET** `/accounts/{account_id}/dex/commands/{command_id}/downloads/{filename}`

Downloads artifacts for an executed command. Bulk downloads are not supported

### Responses

#### 200 Get command artifacts response

> Data is at `body["result"]`

```json

```

#### 4XX Get downloaded commands failure response

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


