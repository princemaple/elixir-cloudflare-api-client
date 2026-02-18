# Gateway CA

## Add a new SSH Certificate Authority (CA)

**POST** `/accounts/{account_id}/access/gateway_ca`

Adds a new SSH Certificate Authority (CA).

### Responses

#### 201 Add a new SSH Certificate Authority (CA) response

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "public_key": "*string*"
}
```

#### 4XX Add a new SSH Certificate Authority (CA) response failure

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



## List SSH Certificate Authorities (CA)

**GET** `/accounts/{account_id}/access/gateway_ca`

Lists SSH Certificate Authorities (CA).

### Responses

#### 200 List SSH Certificate Authorities (CA) response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "public_key": "*string*"
  }
]
```

#### 4XX List SSH Certificate Authorities (CA) response failure

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



## Delete an SSH Certificate Authority (CA)

**DELETE** `/accounts/{account_id}/access/gateway_ca/{certificate_id}`

Deletes an SSH Certificate Authority.

### Responses

#### 200 Delete an SSH Certificate Authority (CA) response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an SSH Certificate Authority (CA) response failure

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


