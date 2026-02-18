# Worker Subdomain

## Create Subdomain

**PUT** `/accounts/{account_id}/workers/subdomain`

Creates a Workers subdomain for an account.

### Responses

#### 200 Create Subdomain response.

> Data is at `body["result"]`

```json
{
  "subdomain": "*string*"
}
```

#### 4XX Create Subdomain response failure.

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



## Get Subdomain

**GET** `/accounts/{account_id}/workers/subdomain`

Returns a Workers subdomain for an account.

### Responses

#### 200 Get Subdomain response.

> Data is at `body["result"]`

```json
{
  "subdomain": "*string*"
}
```

#### 4XX Get Subdomain response failure.

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



## Delete Subdomain

**DELETE** `/accounts/{account_id}/workers/subdomain`

Deletes a Workers subdomain for an account.

### Responses

#### 204 Subdomain deleted successfully.

> Data is at `body["result"]`

```json

```

#### 4XX Delete Subdomain response failure.

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


