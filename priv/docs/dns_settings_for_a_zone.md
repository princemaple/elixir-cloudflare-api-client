# DNS Settings for a Zone

## Update DNS Settings

**PATCH** `/zones/{zone_id}/dns_settings`

Update DNS settings for a zone

### Responses

#### 200 Show DNS Settings response

> Data is at `body["result"]`

```json
{
  "flatten_all_cnames": "*boolean*",
  "foundation_dns": "*boolean*",
  "internal_dns": {
    "reference_zone_id": "*string*"
  },
  "multi_provider": "*boolean*",
  "nameservers": {
    "ns_set": "*integer*",
    "type": "*string*"
  },
  "ns_ttl": "*number*",
  "secondary_overrides": "*boolean*",
  "soa": {
    "expire": "*number*",
    "min_ttl": "*number*",
    "mname": "*string*",
    "refresh": "*number*",
    "retry": "*number*",
    "rname": "*string*",
    "ttl": "*number*"
  },
  "zone_mode": "*string*"
}
```

#### 4XX Show DNS Settings response failure

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



## Show DNS Settings

**GET** `/zones/{zone_id}/dns_settings`

Show DNS settings for a zone

### Responses

#### 200 Show DNS Settings response

> Data is at `body["result"]`

```json
{
  "flatten_all_cnames": "*boolean*",
  "foundation_dns": "*boolean*",
  "internal_dns": {
    "reference_zone_id": "*string*"
  },
  "multi_provider": "*boolean*",
  "nameservers": {
    "ns_set": "*integer*",
    "type": "*string*"
  },
  "ns_ttl": "*number*",
  "secondary_overrides": "*boolean*",
  "soa": {
    "expire": "*number*",
    "min_ttl": "*number*",
    "mname": "*string*",
    "refresh": "*number*",
    "retry": "*number*",
    "rname": "*string*",
    "ttl": "*number*"
  },
  "zone_mode": "*string*"
}
```

#### 4XX Show DNS Settings response failure

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


