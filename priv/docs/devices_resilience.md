# Devices Resilience

## Set Global WARP override state

**POST** `/accounts/{account_id}/devices/resilience/disconnect`

Sets the Global WARP override state.

### Responses

#### 200 Set Global WARP override state response.

> Data is at `body["result"]`

```json
{
  "disconnect": "*boolean*",
  "timestamp": "*string*"
}
```

#### 4XX Set Global WARP override state response failure.

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



## Retrieve Global WARP override state

**GET** `/accounts/{account_id}/devices/resilience/disconnect`

Fetch the Global WARP override state.

### Responses

#### 200 Fetch Global WARP override state response.

> Data is at `body["result"]`

```json
{
  "disconnect": "*boolean*",
  "timestamp": "*string*"
}
```

#### 4XX Fetch Global WARP override state failure.

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


