# Origin CA

## Create Certificate

**POST** `/certificates`

Create an Origin CA certificate. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).

### Responses

#### 200 Create Certificate response

> Data is at `body["result"]`

```json
{
  "certificate": "*string*",
  "csr": "*string*",
  "expires_on": "*string*",
  "hostnames": [
    "*string*"
  ],
  "id": "*string*",
  "request_type": "*string*",
  "requested_validity": "*number*"
}
```

#### 4XX Create Certificate response failure

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



## List Certificates

**GET** `/certificates`

List all existing Origin CA certificates for a given zone. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).

### Responses

#### 200 List Certificates response

> Data is at `body["result"]`

```json
[
  {
    "certificate": "*string*",
    "csr": "*string*",
    "expires_on": "*string*",
    "hostnames": [
      "*string*"
    ],
    "id": "*string*",
    "request_type": "*string*",
    "requested_validity": "*number*"
  }
]
```

#### 4XX List Certificates response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Get Certificate

**GET** `/certificates/{certificate_id}`

Get an existing Origin CA certificate by its serial number. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).

### Responses

#### 200 Get Certificate response

> Data is at `body["result"]`

```json
{
  "certificate": "*string*",
  "csr": "*string*",
  "expires_on": "*string*",
  "hostnames": [
    "*string*"
  ],
  "id": "*string*",
  "request_type": "*string*",
  "requested_validity": "*number*"
}
```

#### 4XX Get Certificate response failure

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



## Revoke Certificate

**DELETE** `/certificates/{certificate_id}`

Revoke an existing Origin CA certificate by its serial number. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).

### Responses

#### 200 Revoke Certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Revoke Certificate response failure

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


