# SSL Verification

## SSL Verification Details

**GET** `/zones/{zone_id}/ssl/verification`

Get SSL Verification Info for a Zone.

### Responses

#### 200 SSL Verification Details response

> Data is at `body["result"]`

```json
[
  {
    "brand_check": "*boolean*",
    "cert_pack_uuid": "*string*",
    "certificate_status": "*string*",
    "signature": "*string*",
    "validation_method": "*string*",
    "verification_info": {
      "record_name": "*string*",
      "record_target": "*string*"
    },
    "verification_status": "*boolean*",
    "verification_type": "*string*"
  }
]
```

#### 4XX SSL Verification Details response failure

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



## Edit SSL Certificate Pack Validation Method

**PATCH** `/zones/{zone_id}/ssl/verification/{certificate_pack_id}`

Edit SSL validation method for a certificate pack. A PATCH request will request an immediate validation check on any certificate, and return the updated status. If a validation method is provided, the validation will be immediately attempted using that method.

### Responses

#### 200 Edit SSL Certificate Pack Validation Method response

> Data is at `body["result"]`

```json
null
```

#### 4XX Edit SSL Certificate Pack Validation Method response failure

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


