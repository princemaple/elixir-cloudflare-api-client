# Account

## Get account limits

**GET** `/accounts/{account_id}/builds/account/limits`

Retrieve account limits and usage information

### Responses

#### 200 Account limits retrieved successfully

> Data is at `body["result"]`

```json
{
  "build_minutes_refresh_on": "*string*",
  "has_reached_build_minutes_limit": "*boolean*"
}
```


