# Cloudflare Images Keys

## List Signing Keys

**GET** `/accounts/{account_id}/images/v1/keys`

Lists your signing keys. These can be found on your Cloudflare Images dashboard.

### Responses

#### 200 List Signing Keys response

> Data is at `body["result"]`

```json
{
  "keys": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ]
}
```

#### 4XX List Signing Keys response failure

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



## Create a new Signing Key

**PUT** `/accounts/{account_id}/images/v1/keys/{signing_key_name}`

Create a new signing key with specified name. Returns all keys available.

### Responses

#### 200 Add Signing Key response

> Data is at `body["result"]`

```json
{
  "keys": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ]
}
```

#### 4XX Add Signing Key response failure

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



## Delete Signing Key

**DELETE** `/accounts/{account_id}/images/v1/keys/{signing_key_name}`

Delete signing key with specified name. Returns all keys available.
When last key is removed, a new default signing key will be generated.


### Responses

#### 200 Delete Signing Key response

> Data is at `body["result"]`

```json
{
  "keys": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ]
}
```

#### 4XX Delete Signing Key response failure

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


