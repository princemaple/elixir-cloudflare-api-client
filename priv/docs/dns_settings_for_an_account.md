# DNS Settings for an Account

## Update DNS Settings

**PATCH** `/accounts/{account_id}/dns_settings`

Update DNS settings for an account

### Responses

#### 200 Show DNS Settings response

> Data is at `body["result"]`

```json
{
  "zone_defaults": {
    "internal_dns": {},
    "nameservers": {
      "type": "*string*"
    },
    "soa": {}
  }
}
```

#### 4XX Show DNS Settings response failure

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



## Show DNS Settings

**GET** `/accounts/{account_id}/dns_settings`

Show DNS settings for an account

### Responses

#### 200 Show DNS Settings response

> Data is at `body["result"]`

```json
{
  "zone_defaults": {
    "internal_dns": {},
    "nameservers": {
      "type": "*string*"
    },
    "soa": {}
  }
}
```

#### 4XX Show DNS Settings response failure

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


