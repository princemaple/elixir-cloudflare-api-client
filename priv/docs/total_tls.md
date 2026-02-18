# Total TLS

## Enable or Disable Total TLS

**POST** `/zones/{zone_id}/acm/total_tls`

Set Total TLS Settings or disable the feature for a Zone.

### Responses

#### 200 Enable or Disable Total TLS response

> Data is at `body["result"]`

```json
null
```

#### 4XX Enable or Disable Total TLS response failure

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



## Total TLS Settings Details

**GET** `/zones/{zone_id}/acm/total_tls`

Get Total TLS Settings for a Zone.

### Responses

#### 200 Total TLS Settings Details response

> Data is at `body["result"]`

```json
null
```

#### 4XX Total TLS Settings Details response failure

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


