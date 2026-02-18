# ppc_config

## Set can_be_enabled setting on zones

**PATCH** `/accounts/{account_id}/pay-per-crawl/zones_can_be_enabled`

Allows an account admin to set the can_be_enabled setting on a list of zones.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error_chain": [
        null
      ],
      "message": "*string*",
      "meta": null,
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error_chain": [
        null
      ],
      "message": "*string*",
      "meta": null,
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result_info": {
    "count": "*integer*",
    "page": "*integer*",
    "per_page": "*integer*",
    "total_count": "*integer*",
    "total_pages": "*integer*"
  },
  "success": "*boolean*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Gets the can_be_enabled zone setting

**POST** `/accounts/{account_id}/pay-per-crawl/zones_can_be_enabled/query`

Provided a list of pay-per-crawl configured zones this method will return whether they can enable PPC or not.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "zones": [
    {
      "can_be_enabled": "*boolean*",
      "id": "*string*"
    }
  ]
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Creates pay-per-crawl config for a zone

**POST** `/zones/{zone_id}/pay-per-crawl/configuration`

Creates the pay-per-crawl config for a zone.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "bot_overrides": {},
  "enabled": "*boolean*",
  "price_usd_microcents": "*integer*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Changes pay-per-crawl config for a zone

**PATCH** `/zones/{zone_id}/pay-per-crawl/configuration`

Changes the pay-per-crawl config for a zone.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "bot_overrides": {},
  "enabled": "*boolean*",
  "price_usd_microcents": "*integer*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Get the pay-per-crawl config

**GET** `/zones/{zone_id}/pay-per-crawl/configuration`

Gets the pay-per-crawl config for a zone including the bot configuration.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "bot_overrides": {},
  "enabled": "*boolean*",
  "price_usd_microcents": "*integer*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```


