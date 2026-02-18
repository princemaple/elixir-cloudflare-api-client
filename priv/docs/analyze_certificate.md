# Analyze Certificate

## Analyze Certificate

**POST** `/zones/{zone_id}/ssl/analyze`

Returns the set of hostnames, the signature algorithm, and the expiration date of the certificate.

### Responses

#### 200 Analyze Certificate response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Analyze Certificate response failure

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


