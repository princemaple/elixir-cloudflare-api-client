# Worker Account Settings

## Create Worker Account Settings

**PUT** `/accounts/{account_id}/workers/account-settings`

Creates Worker account settings for an account.

### Responses

#### 200 Create Worker Account Settings response.

> Data is at `body["result"]`

```json
{
  "default_usage_model": "*string*",
  "green_compute": "*boolean*"
}
```

#### 4XX Create Worker Account Settings response failure.

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



## Fetch Worker Account Settings

**GET** `/accounts/{account_id}/workers/account-settings`

Fetches Worker account settings for an account.

### Responses

#### 200 Fetch Worker Account Settings response.

> Data is at `body["result"]`

```json
{
  "default_usage_model": "*string*",
  "green_compute": "*boolean*"
}
```

#### 4XX Fetch Worker Account Settings response failure.

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


