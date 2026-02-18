# Zero Trust Connectivity Settings

## Updates the Zero Trust Connectivity Settings

**PATCH** `/accounts/{account_id}/zerotrust/connectivity_settings`

Updates the Zero Trust Connectivity Settings for the given account.

### Responses

#### 200 Update Zero Trust Connectivity Settings response

> Data is at `body["result"]`

```json
{
  "icmp_proxy_enabled": "*boolean*",
  "offramp_warp_enabled": "*boolean*"
}
```

#### 4XX Update Zero Trust Connectivity Settings response failure

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



## Get Zero Trust Connectivity Settings

**GET** `/accounts/{account_id}/zerotrust/connectivity_settings`

Gets the Zero Trust Connectivity Settings for the given account.

### Responses

#### 200 Get Zero Trust Connectivity Settings response

> Data is at `body["result"]`

```json
{
  "icmp_proxy_enabled": "*boolean*",
  "offramp_warp_enabled": "*boolean*"
}
```

#### 4XX Get Zero Trust Connectivity Settings response failure

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


