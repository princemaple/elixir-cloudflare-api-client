# Access short-lived certificate CAs

## List short-lived certificate CAs

**GET** `/accounts/{account_id}/access/apps/ca`

Lists short-lived certificate CAs and their public keys.

### Responses

#### 200 List short-lived certificate CAs response

> Data is at `body["result"]`

```json
[
  {
    "aud": "*string*",
    "id": "*string*",
    "public_key": "*string*"
  }
]
```

#### 4XX List short-lived certificate CAs response failure

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



## Create a short-lived certificate CA

**POST** `/accounts/{account_id}/access/apps/{app_id}/ca`

Generates a new short-lived certificate CA and public key.

### Responses

#### 200 Create a short-lived certificate CA response

> Data is at `body["result"]`

```json
{
  "aud": "*string*",
  "id": "*string*",
  "public_key": "*string*"
}
```

#### 4XX Create a short-lived certificate CA response failure

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



## Get a short-lived certificate CA

**GET** `/accounts/{account_id}/access/apps/{app_id}/ca`

Fetches a short-lived certificate CA and its public key.

### Responses

#### 200 Get a short-lived certificate CA response

> Data is at `body["result"]`

```json
{
  "aud": "*string*",
  "id": "*string*",
  "public_key": "*string*"
}
```

#### 4XX Get a short-lived certificate CA response failure

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



## Delete a short-lived certificate CA

**DELETE** `/accounts/{account_id}/access/apps/{app_id}/ca`

Deletes a short-lived certificate CA.

### Responses

#### 202 Delete a short-lived certificate CA response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a short-lived certificate CA response failure

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


