# Logcontrol CMB config for an account

## Update CMB config

**POST** `/accounts/{account_id}/logs/control/cmb/config`

Updates CMB config.

### Responses

#### 200 Update CMB config response

> Data is at `body["result"]`

```json
{
  "allow_out_of_region_access": "*boolean*",
  "regions": "*string*"
}
```

#### 4XX Update CMB config response failure

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



## Get CMB config

**GET** `/accounts/{account_id}/logs/control/cmb/config`

Gets CMB config.

### Responses

#### 200 Get CMB config response

> Data is at `body["result"]`

```json
{
  "allow_out_of_region_access": "*boolean*",
  "regions": "*string*"
}
```

#### 4XX Get CMB config response failure

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



## Delete CMB config

**DELETE** `/accounts/{account_id}/logs/control/cmb/config`

Deletes CMB config.

### Responses

#### 200 Delete CMB config response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete CMB config response failure

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


