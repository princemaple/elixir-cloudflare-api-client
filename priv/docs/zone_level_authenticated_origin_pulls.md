# Zone-Level Authenticated Origin Pulls

## Upload Certificate

**POST** `/zones/{zone_id}/origin_tls_client_auth`

Upload your own certificate you want Cloudflare to use for edge-to-origin communication to override the shared certificate. Please note that it is important to keep only one certificate active. Also, make sure to enable zone-level authenticated origin pulls by making a PUT call to settings endpoint to see the uploaded certificate in use.

### Responses

#### 200 Upload Certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Upload Certificate response failure

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

**GET** `/zones/{zone_id}/origin_tls_client_auth`



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



## Set Enablement for Zone

**PUT** `/zones/{zone_id}/origin_tls_client_auth/settings`

Enable or disable zone-level authenticated origin pulls. 'enabled' should be set true either before/after the certificate is uploaded to see the certificate in use.

### Responses

#### 200 Set Enablement for Zone response

> Data is at `body["result"]`

```json
null
```

#### 4XX Set Enablement for Zone response failure

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



## Get Enablement Setting for Zone

**GET** `/zones/{zone_id}/origin_tls_client_auth/settings`

Get whether zone-level authenticated origin pulls is enabled or not. It is false by default.

### Responses

#### 200 Get Enablement Setting for Zone response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get Enablement Setting for Zone response failure

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



## Get Certificate Details

**GET** `/zones/{zone_id}/origin_tls_client_auth/{certificate_id}`



### Responses

#### 200 Get Certificate Details response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get Certificate Details response failure

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



## Delete Certificate

**DELETE** `/zones/{zone_id}/origin_tls_client_auth/{certificate_id}`



### Responses

#### 200 Delete Certificate response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete Certificate response failure

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


