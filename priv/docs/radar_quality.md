# Radar Quality

## Get Internet Quality Index (IQI) summary

**GET** `/radar/quality/iqi/summary`

Retrieves a summary (percentiles) of bandwidth, latency, or DNS response time from the Radar Internet Quality Index (IQI).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "summary_0": {
    "p25": "*string*",
    "p50": "*string*",
    "p75": "*string*"
  }
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Internet Quality Index (IQI) time series

**GET** `/radar/quality/iqi/timeseries_groups`

Retrieves a time series (percentiles) of bandwidth, latency, or DNS response time from the Radar Internet Quality Index (IQI).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "aggInterval": "*string*",
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "serie_0": {
    "p25": [
      "*string*"
    ],
    "p50": [
      "*string*"
    ],
    "p75": [
      "*string*"
    ],
    "timestamps": [
      "*string*"
    ]
  }
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get speed tests histogram

**GET** `/radar/quality/speed/histogram`

Retrieves a histogram from the previous 90 days of Cloudflare Speed Test data, split into fixed bandwidth (Mbps), latency (ms), or jitter (ms) buckets.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "histogram_0": {
    "bandwidthDownload": [
      "*string*"
    ],
    "bandwidthUpload": [
      "*string*"
    ],
    "bucketMin": [
      "*string*"
    ]
  },
  "meta": {
    "bucketSize": "*integer*",
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "totalTests": [
      "*integer*"
    ],
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  }
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get speed tests summary

**GET** `/radar/quality/speed/summary`

Retrieves a summary of bandwidth, latency, jitter, and packet loss, from the previous 90 days of Cloudflare Speed Test data.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "summary_0": {
    "bandwidthDownload": "*string*",
    "bandwidthUpload": "*string*",
    "jitterIdle": "*string*",
    "jitterLoaded": "*string*",
    "latencyIdle": "*string*",
    "latencyLoaded": "*string*",
    "packetLoss": "*string*"
  }
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get top ASes by speed test results

**GET** `/radar/quality/speed/top/ases`

Retrieves the top autonomous systems by bandwidth, latency, jitter, or packet loss, from the previous 90 days of Cloudflare Speed Test data.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "top_0": [
    {
      "bandwidthDownload": "*string*",
      "bandwidthUpload": "*string*",
      "clientASN": "*number*",
      "clientASName": "*string*",
      "jitterIdle": "*string*",
      "jitterLoaded": "*string*",
      "latencyIdle": "*string*",
      "latencyLoaded": "*string*",
      "numTests": "*number*",
      "rankPower": "*number*"
    }
  ]
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```



## Get top locations by speed test results

**GET** `/radar/quality/speed/top/locations`

Retrieves the top locations by bandwidth, latency, jitter, or packet loss, from the previous 90 days of Cloudflare Speed Test data.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "top_0": [
    {
      "bandwidthDownload": "*string*",
      "bandwidthUpload": "*string*",
      "clientCountryAlpha2": "*string*",
      "clientCountryName": "*string*",
      "jitterIdle": "*string*",
      "jitterLoaded": "*string*",
      "latencyIdle": "*string*",
      "latencyLoaded": "*string*",
      "numTests": "*number*",
      "rankPower": "*number*"
    }
  ]
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


