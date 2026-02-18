# Radar Verified Bots

## Get top verified bots by HTTP requests

**GET** `/radar/verified_bots/top/bots`

Retrieves the top verified bots by HTTP requests, with owner and category.

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
      "botCategory": "*string*",
      "botName": "*string*",
      "botOwner": "*string*",
      "value": "*string*"
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



## Get top verified bot categories by HTTP requests

**GET** `/radar/verified_bots/top/categories`

Retrieves the top verified bot categories by HTTP requests, along with their corresponding percentage, over the total verified bot HTTP requests.

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
      "botCategory": "*string*",
      "value": "*string*"
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


