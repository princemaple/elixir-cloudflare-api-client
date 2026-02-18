# Radar Domains Ranking

## Get domain rank details

**GET** `/radar/ranking/domain/{domain}`

Retrieves domain rank details. Cloudflare provides an ordered rank for the top 100 domains, but for the remainder it only provides ranking buckets like top 200 thousand, top one million, etc.. These are available through Radar datasets endpoints.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "details_0": {
    "bucket": "*string*",
    "categories": [
      {
        "id": "*integer*",
        "name": "*string*",
        "superCategoryId": "*integer*"
      }
    ],
    "rank": "*integer*",
    "top_locations": [
      {
        "locationCode": "*string*",
        "locationName": "*string*",
        "rank": "*integer*"
      }
    ]
  },
  "meta": {
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
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



## Get domains rank time series

**GET** `/radar/ranking/timeseries_groups`

Retrieves domains rank over time.

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



## Get top or trending domains

**GET** `/radar/ranking/top`

Retrieves the top or trending domains based on their rank. Popular domains are domains of broad appeal based on how people use the Internet. Trending domains are domains that are generating a surge in interest. For more information on top domains, see https://blog.cloudflare.com/radar-domain-rankings/.

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
      "categories": [
        {
          "id": "*number*",
          "name": "*string*",
          "superCategoryId": "*number*"
        }
      ],
      "domain": "*string*",
      "pctRankChange": "*number*",
      "rank": "*integer*"
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


