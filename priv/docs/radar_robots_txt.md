# Radar Robots.txt

## Get top domain categories by robots.txt files parsed

**GET** `/radar/robots_txt/top/domain_categories`

Retrieves the top domain categories by the number of robots.txt files parsed.

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
      "name": "*string*",
      "value": "*integer*"
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



## Get top user agents on robots.txt files

**GET** `/radar/robots_txt/top/user_agents/directive`

Retrieves the top user agents on robots.txt files.

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
      "fully": "*integer*",
      "name": "*string*",
      "partially": "*integer*",
      "value": "*integer*"
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


