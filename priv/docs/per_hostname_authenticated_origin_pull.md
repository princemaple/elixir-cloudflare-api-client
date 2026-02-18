# Per-hostname Authenticated Origin Pull

## Enable or Disable a Hostname for Client Authentication

**PUT** `/zones/{zone_id}/origin_tls_client_auth/hostnames`

Associate a hostname to a certificate and enable, disable or invalidate the association. If disabled, client certificate will not be sent to the hostname even if activated at the zone level. 100 maximum associations on a single certificate are allowed. Note: Use a null value for parameter *enabled* to invalidate the association.

### Responses

#### 200 Enable or Disable a Hostname for Client Authentication response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Enable or Disable a Hostname for Client Authentication response failure

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



## Upload a Hostname Client Certificate

**POST** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates`

Upload a certificate to be used for client authentication on a hostname. 10 hostname certificates per zone are allowed.

### Responses

#### 200 Upload a Hostname Client Certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Upload a Hostname Client Certificate response failure

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

**GET** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates`



### Responses

#### 200 List Certificates response

> Data is at `body["result"]`

```json
[
  null
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



## Get the Hostname Client Certificate

**GET** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates/{certificate_id}`

Get the certificate by ID to be used for client authentication on a hostname.

### Responses

#### 200 Get the Hostname Client Certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get the Hostname Client Certificate response failure

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



## Delete Hostname Client Certificate

**DELETE** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates/{certificate_id}`



### Responses

#### 200 Delete Hostname Client Certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete Hostname Client Certificate response failure

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



## Get the Hostname Status for Client Authentication

**GET** `/zones/{zone_id}/origin_tls_client_auth/hostnames/{hostname}`



### Responses

#### 200 Get the Hostname Status for Client Authentication response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get the Hostname Status for Client Authentication response failure

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


