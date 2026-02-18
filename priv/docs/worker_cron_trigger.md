# Worker Cron Trigger

## Update Cron Triggers

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/schedules`

Updates Cron Triggers for a Worker.

### Responses

#### 200 Update Cron Triggers response.

> Data is at `body["result"]`

```json
{
  "schedules": [
    {
      "created_on": "*string*",
      "cron": "*string*",
      "modified_on": "*string*"
    }
  ]
}
```

#### 4XX Update Cron Triggers response failure.

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



## Get Cron Triggers

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/schedules`

Fetches Cron Triggers for a Worker.

### Responses

#### 200 Get Cron Triggers response.

> Data is at `body["result"]`

```json
{
  "schedules": [
    {
      "created_on": "*string*",
      "cron": "*string*",
      "modified_on": "*string*"
    }
  ]
}
```

#### 4XX Get Cron Triggers response failure.

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


