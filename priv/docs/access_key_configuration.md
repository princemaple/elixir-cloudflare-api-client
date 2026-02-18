# Access key configuration

## Update the Access key configuration

**PUT** `/accounts/{account_id}/access/keys`

Updates the Access key rotation settings for an account.

### Responses

#### 200 Update the Access key configuration response

> Data is at `body["result"]`

```json
{
  "days_until_next_rotation": "*number*",
  "key_rotation_interval_days": "*number*",
  "last_key_rotation_at": "*string*"
}
```

#### 4XX Update the Access key configuration response failure

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



## Get the Access key configuration

**GET** `/accounts/{account_id}/access/keys`

Gets the Access key rotation settings for an account.

### Responses

#### 200 Get the Access key configuration response

> Data is at `body["result"]`

```json
{
  "days_until_next_rotation": "*number*",
  "key_rotation_interval_days": "*number*",
  "last_key_rotation_at": "*string*"
}
```

#### 4XX Get the Access key configuration response failure

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



## Rotate Access keys

**POST** `/accounts/{account_id}/access/keys/rotate`

Perfoms a key rotation for an account.

### Responses

#### 200 Rotate Access keys response

> Data is at `body["result"]`

```json
{
  "days_until_next_rotation": "*number*",
  "key_rotation_interval_days": "*number*",
  "last_key_rotation_at": "*string*"
}
```

#### 4XX Rotate Access keys response failure

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


