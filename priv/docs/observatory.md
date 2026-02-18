# Observatory

## Get quota and availability

**GET** `/zones/{zone_id}/speed_api/availabilities`

Retrieves quota for all plans, as well as the current zone quota.

### Responses

#### 200 Page test availability.

> Data is at `body["result"]`

```json
{
  "quota": {
    "plan": "*string*",
    "quotasPerPlan": {
      "value": {
        "business": "*integer*",
        "enterprise": "*integer*",
        "free": "*integer*",
        "pro": "*integer*"
      }
    },
    "remainingSchedules": "*number*",
    "remainingTests": "*number*",
    "scheduleQuotasPerPlan": {
      "value": {
        "business": "*integer*",
        "enterprise": "*integer*",
        "free": "*integer*",
        "pro": "*integer*"
      }
    }
  },
  "regions": [
    {
      "label": "*string*",
      "value": "*string*"
    }
  ],
  "regionsPerPlan": {
    "business": [
      {
        "label": "*string*",
        "value": null
      }
    ],
    "enterprise": [
      {
        "label": "*string*",
        "value": null
      }
    ],
    "free": [
      {
        "label": "*string*",
        "value": null
      }
    ],
    "pro": [
      {
        "label": "*string*",
        "value": null
      }
    ]
  }
}
```

#### 4XX Failure response.

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



## List tested webpages

**GET** `/zones/{zone_id}/speed_api/pages`

Lists all webpages which have been tested.

### Responses

#### 200 List of pages.

> Data is at `body["result"]`

```json
[
  {
    "region": {
      "label": "*string*",
      "value": "*string*"
    },
    "scheduleFrequency": "*string*",
    "tests": [
      {
        "date": null,
        "desktopReport": null,
        "id": null,
        "mobileReport": null,
        "region": null,
        "scheduleFrequency": null,
        "url": null
      }
    ],
    "url": "*string*"
  }
]
```

#### 4XX Failure response.

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



## Start page test

**POST** `/zones/{zone_id}/speed_api/pages/{url}/tests`

Starts a test for a specific webpage, in a specific region.

### Responses

#### 200 Page test details.

> Data is at `body["result"]`

```json
{
  "date": "*string*",
  "desktopReport": {
    "cls": "*number*",
    "deviceType": "*string*",
    "error": {
      "code": "*string*",
      "detail": "*string*",
      "finalDisplayedUrl": "*string*"
    },
    "fcp": "*number*",
    "jsonReportUrl": "*string*",
    "lcp": "*number*",
    "performanceScore": "*number*",
    "si": "*number*",
    "state": "*string*",
    "tbt": "*number*",
    "ttfb": "*number*",
    "tti": "*number*"
  },
  "id": "*string*",
  "mobileReport": {
    "cls": "*number*",
    "deviceType": "*string*",
    "error": {
      "code": "*string*",
      "detail": "*string*",
      "finalDisplayedUrl": "*string*"
    },
    "fcp": "*number*",
    "jsonReportUrl": "*string*",
    "lcp": "*number*",
    "performanceScore": "*number*",
    "si": "*number*",
    "state": "*string*",
    "tbt": "*number*",
    "ttfb": "*number*",
    "tti": "*number*"
  },
  "region": {
    "label": "*string*",
    "value": "*string*"
  },
  "scheduleFrequency": "*string*",
  "url": "*string*"
}
```

#### 4XX Failure response.

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



## List page test history

**GET** `/zones/{zone_id}/speed_api/pages/{url}/tests`

Test history (list of tests) for a specific webpage.

### Responses

#### 200 List of test history for a page.

> Data is at `body["result"]`

```json
[
  {
    "date": "*string*",
    "desktopReport": {
      "cls": "*number*",
      "deviceType": null,
      "error": {
        "code": null,
        "detail": null,
        "finalDisplayedUrl": null
      },
      "fcp": "*number*",
      "jsonReportUrl": "*string*",
      "lcp": "*number*",
      "performanceScore": "*number*",
      "si": "*number*",
      "state": null,
      "tbt": "*number*",
      "ttfb": "*number*",
      "tti": "*number*"
    },
    "id": "*string*",
    "mobileReport": {
      "cls": "*number*",
      "deviceType": null,
      "error": {
        "code": null,
        "detail": null,
        "finalDisplayedUrl": null
      },
      "fcp": "*number*",
      "jsonReportUrl": "*string*",
      "lcp": "*number*",
      "performanceScore": "*number*",
      "si": "*number*",
      "state": null,
      "tbt": "*number*",
      "ttfb": "*number*",
      "tti": "*number*"
    },
    "region": {
      "label": "*string*",
      "value": null
    },
    "scheduleFrequency": "*string*",
    "url": "*string*"
  }
]
```

#### 4XX Failure response.

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



## Delete all page tests

**DELETE** `/zones/{zone_id}/speed_api/pages/{url}/tests`

Deletes all tests for a specific webpage from a specific region. Deleted tests are still counted as part of the quota.

### Responses

#### 200 Number of deleted tests.

> Data is at `body["result"]`

```json
{
  "count": "*number*"
}
```

#### 4XX Failure response.

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



## Get a page test result

**GET** `/zones/{zone_id}/speed_api/pages/{url}/tests/{test_id}`

Retrieves the result of a specific test.

### Responses

#### 200 Page test result.

> Data is at `body["result"]`

```json
{
  "date": "*string*",
  "desktopReport": {
    "cls": "*number*",
    "deviceType": "*string*",
    "error": {
      "code": "*string*",
      "detail": "*string*",
      "finalDisplayedUrl": "*string*"
    },
    "fcp": "*number*",
    "jsonReportUrl": "*string*",
    "lcp": "*number*",
    "performanceScore": "*number*",
    "si": "*number*",
    "state": "*string*",
    "tbt": "*number*",
    "ttfb": "*number*",
    "tti": "*number*"
  },
  "id": "*string*",
  "mobileReport": {
    "cls": "*number*",
    "deviceType": "*string*",
    "error": {
      "code": "*string*",
      "detail": "*string*",
      "finalDisplayedUrl": "*string*"
    },
    "fcp": "*number*",
    "jsonReportUrl": "*string*",
    "lcp": "*number*",
    "performanceScore": "*number*",
    "si": "*number*",
    "state": "*string*",
    "tbt": "*number*",
    "ttfb": "*number*",
    "tti": "*number*"
  },
  "region": {
    "label": "*string*",
    "value": "*string*"
  },
  "scheduleFrequency": "*string*",
  "url": "*string*"
}
```

#### 4XX Failure response.

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



## List core web vital metrics trend

**GET** `/zones/{zone_id}/speed_api/pages/{url}/trend`

Lists the core web vital metrics trend over time for a specific page.

### Responses

#### 200 Page trend.

> Data is at `body["result"]`

```json
{
  "cls": [
    "*number*"
  ],
  "fcp": [
    "*number*"
  ],
  "lcp": [
    "*number*"
  ],
  "performanceScore": [
    "*number*"
  ],
  "si": [
    "*number*"
  ],
  "tbt": [
    "*number*"
  ],
  "ttfb": [
    "*number*"
  ],
  "tti": [
    "*number*"
  ]
}
```

#### 4XX Failure response.

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



## Create scheduled page test

**POST** `/zones/{zone_id}/speed_api/schedule/{url}`

Creates a scheduled test for a page.

### Responses

#### 200 Page test schedule.

> Data is at `body["result"]`

```json
{
  "schedule": {
    "frequency": "*string*",
    "region": "*string*",
    "url": "*string*"
  },
  "test": {
    "date": "*string*",
    "desktopReport": {
      "cls": "*number*",
      "deviceType": null,
      "error": {
        "code": null,
        "detail": null,
        "finalDisplayedUrl": null
      },
      "fcp": "*number*",
      "jsonReportUrl": "*string*",
      "lcp": "*number*",
      "performanceScore": "*number*",
      "si": "*number*",
      "state": null,
      "tbt": "*number*",
      "ttfb": "*number*",
      "tti": "*number*"
    },
    "id": "*string*",
    "mobileReport": {
      "cls": "*number*",
      "deviceType": null,
      "error": {
        "code": null,
        "detail": null,
        "finalDisplayedUrl": null
      },
      "fcp": "*number*",
      "jsonReportUrl": "*string*",
      "lcp": "*number*",
      "performanceScore": "*number*",
      "si": "*number*",
      "state": null,
      "tbt": "*number*",
      "ttfb": "*number*",
      "tti": "*number*"
    },
    "region": {
      "label": "*string*",
      "value": null
    },
    "scheduleFrequency": "*string*",
    "url": "*string*"
  }
}
```

#### 4XX Failure response.

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



## Get a page test schedule

**GET** `/zones/{zone_id}/speed_api/schedule/{url}`

Retrieves the test schedule for a page in a specific region.

### Responses

#### 200 Page test schedule.

> Data is at `body["result"]`

```json
{
  "frequency": "*string*",
  "region": "*string*",
  "url": "*string*"
}
```

#### 4XX Failure response.

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



## Delete scheduled page test

**DELETE** `/zones/{zone_id}/speed_api/schedule/{url}`

Deletes a scheduled test for a page.

### Responses

#### 200 Number of deleted tests.

> Data is at `body["result"]`

```json
{
  "count": "*number*"
}
```

#### 4XX Failure response.

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


