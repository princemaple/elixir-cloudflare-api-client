# Radar Certificate Transparency

## List certificate authorities

**GET** `/radar/ct/authorities`

Retrieves a list of certificate authorities.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "certificateAuthorities": [
    {
      "certificateRecordType": "*string*",
      "country": "*string*",
      "countryName": "*string*",
      "name": "*string*",
      "owner": "*string*",
      "parentName": "*string*",
      "parentSha256Fingerprint": "*string*",
      "revocationStatus": "*string*",
      "sha256Fingerprint": "*string*"
    }
  ]
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



## Get certificate authority details

**GET** `/radar/ct/authorities/{ca_slug}`

Retrieves the requested CA information.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "certificateAuthority": {
    "appleStatus": "*string*",
    "authorityKeyIdentifier": "*string*",
    "certificateRecordType": "*string*",
    "chromeStatus": "*string*",
    "country": "*string*",
    "countryName": "*string*",
    "microsoftStatus": "*string*",
    "mozillaStatus": "*string*",
    "name": "*string*",
    "owner": "*string*",
    "parentName": "*string*",
    "parentSha256Fingerprint": "*string*",
    "related": [
      {
        "certificateRecordType": "*string*",
        "name": "*string*",
        "revocationStatus": "*string*",
        "sha256Fingerprint": "*string*"
      }
    ],
    "revocationStatus": "*string*",
    "sha256Fingerprint": "*string*",
    "subjectKeyIdentifier": "*string*",
    "validFrom": "*string*",
    "validTo": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```



## List certificate logs

**GET** `/radar/ct/logs`

Retrieves a list of certificate logs.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "certificateLogs": [
    {
      "api": "*string*",
      "description": "*string*",
      "endExclusive": "*string*",
      "operator": "*string*",
      "slug": "*string*",
      "startInclusive": "*string*",
      "state": "*string*",
      "stateTimestamp": "*string*",
      "url": "*string*"
    }
  ]
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



## Get certificate log details

**GET** `/radar/ct/logs/{log_slug}`

Retrieves the requested certificate log information.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "certificateLog": {
    "api": "*string*",
    "avgThroughput": "*number*",
    "description": "*string*",
    "endExclusive": "*string*",
    "lastUpdate": "*string*",
    "operator": "*string*",
    "performance": {
      "endpoints": [
        {
          "endpoint": "*string*",
          "responseTime": "*number*",
          "uptime": "*number*"
        }
      ],
      "responseTime": "*number*",
      "uptime": "*number*"
    },
    "related": [
      {
        "description": "*string*",
        "endExclusive": "*string*",
        "slug": "*string*",
        "startInclusive": "*string*",
        "state": "*string*"
      }
    ],
    "slug": "*string*",
    "startInclusive": "*string*",
    "state": "*string*",
    "stateTimestamp": "*string*",
    "submittableCertCount": "*string*",
    "submittedCertCount": "*string*",
    "url": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```



## Get certificate distribution by dimension

**GET** `/radar/ct/summary/{dimension}`

Retrieves an aggregated summary of certificates grouped by the specified dimension.

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
  "summary_0": null
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



## Get certificates time series

**GET** `/radar/ct/timeseries`

Retrieves certificate volume over time.

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



## Get time series of certificate distribution by dimension

**GET** `/radar/ct/timeseries_groups/{dimension}`

Retrieves the distribution of certificates grouped by the specified dimension over time.

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
  "serie_0": null
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


