# DNSSEC

## Edit DNSSEC Status

**PATCH** `/zones/{zone_id}/dnssec`

Enable or disable DNSSEC.

### Responses

#### 200 Edit DNSSEC Status response.

> Data is at `body["result"]`

```json
{
  "algorithm": "*string*",
  "digest": "*string*",
  "digest_algorithm": "*string*",
  "digest_type": "*string*",
  "dnssec_multi_signer": "*boolean*",
  "dnssec_presigned": "*boolean*",
  "dnssec_use_nsec3": "*boolean*",
  "ds": "*string*",
  "flags": "*number*",
  "key_tag": "*number*",
  "key_type": "*string*",
  "modified_on": "*string*",
  "public_key": "*string*",
  "status": null
}
```

#### 4XX Edit DNSSEC Status response failure.

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



## DNSSEC Details

**GET** `/zones/{zone_id}/dnssec`

Details about DNSSEC status and configuration.

### Responses

#### 200 DNSSEC Details response.

> Data is at `body["result"]`

```json
{
  "algorithm": "*string*",
  "digest": "*string*",
  "digest_algorithm": "*string*",
  "digest_type": "*string*",
  "dnssec_multi_signer": "*boolean*",
  "dnssec_presigned": "*boolean*",
  "dnssec_use_nsec3": "*boolean*",
  "ds": "*string*",
  "flags": "*number*",
  "key_tag": "*number*",
  "key_type": "*string*",
  "modified_on": "*string*",
  "public_key": "*string*",
  "status": null
}
```

#### 4XX DNSSEC Details response failure.

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



## Delete DNSSEC records

**DELETE** `/zones/{zone_id}/dnssec`

Delete DNSSEC.

### Responses

#### 200 Delete DNSSEC records response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete DNSSEC records response failure.

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


