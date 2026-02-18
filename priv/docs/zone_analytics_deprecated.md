# Zone Analytics (Deprecated)

## Get analytics by Co-locations

**GET** `/zones/{zone_identifier}/analytics/colos`

This view provides a breakdown of analytics data by datacenter. Note: This is available to Enterprise customers only.

### Responses

#### 200 Get analytics by Co-locations response

> Data is at `body["result"]`

```json
[
  {
    "colo_id": "*string*",
    "timeseries": [
      {
        "bandwidth": null,
        "requests": null,
        "since": null,
        "threats": null,
        "until": null
      }
    ],
    "totals": {
      "bandwidth": {
        "all": null,
        "cached": null,
        "uncached": null
      },
      "requests": {
        "all": null,
        "cached": null,
        "country": null,
        "http_status": null,
        "uncached": null
      },
      "since": null,
      "threats": {
        "all": null,
        "country": null,
        "type": null
      },
      "until": null
    }
  }
]
```

#### 4XX Get analytics by Co-locations response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "query": {
    "since": null,
    "time_delta": "*integer*",
    "until": null
  },
  "result": {},
  "success": "*boolean*"
}
```



## Get dashboard

**GET** `/zones/{zone_identifier}/analytics/dashboard`

The dashboard view provides both totals and timeseries data for the given zone and time period across the entire Cloudflare network.

### Responses

#### 200 Get dashboard response

> Data is at `body["result"]`

```json
{
  "timeseries": [
    {
      "bandwidth": {
        "all": null,
        "cached": null,
        "content_type": null,
        "country": null,
        "ssl": null,
        "ssl_protocols": null,
        "uncached": null
      },
      "pageviews": {
        "all": null,
        "search_engine": null
      },
      "requests": {
        "all": null,
        "cached": null,
        "content_type": null,
        "country": null,
        "http_status": null,
        "ssl": null,
        "ssl_protocols": null,
        "uncached": null
      },
      "since": null,
      "threats": {
        "all": null,
        "country": null,
        "type": null
      },
      "uniques": {
        "all": null
      },
      "until": null
    }
  ],
  "totals": {
    "bandwidth": {
      "all": "*integer*",
      "cached": "*integer*",
      "content_type": {},
      "country": {},
      "ssl": {
        "encrypted": null,
        "unencrypted": null
      },
      "ssl_protocols": {
        "TLSv1": null,
        "TLSv1.1": null,
        "TLSv1.2": null,
        "TLSv1.3": null,
        "none": null
      },
      "uncached": "*integer*"
    },
    "pageviews": {
      "all": "*integer*",
      "search_engine": {}
    },
    "requests": {
      "all": "*integer*",
      "cached": "*integer*",
      "content_type": {},
      "country": {},
      "http_status": {},
      "ssl": {
        "encrypted": null,
        "unencrypted": null
      },
      "ssl_protocols": {
        "TLSv1": null,
        "TLSv1.1": null,
        "TLSv1.2": null,
        "TLSv1.3": null,
        "none": null
      },
      "uncached": "*integer*"
    },
    "since": null,
    "threats": {
      "all": "*integer*",
      "country": {},
      "type": {}
    },
    "uniques": {
      "all": "*integer*"
    },
    "until": null
  }
}
```

#### 4XX Get dashboard response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "query": {
    "since": null,
    "time_delta": "*integer*",
    "until": null
  },
  "result": {},
  "success": "*boolean*"
}
```


