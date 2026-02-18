# Radar AS112

## Get AS112 DNS queries by DNSSEC summary

**GET** `/radar/as112/summary/dnssec`

Retrieves the distribution of DNS queries to AS112 by DNSSEC (DNS Security Extensions) support.

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
    "NOT_SUPPORTED": "*string*",
    "SUPPORTED": "*string*"
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



## Get AS112 DNS queries by EDNS summary

**GET** `/radar/as112/summary/edns`

Retrieves the distribution of DNS queries to AS112 by EDNS (Extension Mechanisms for DNS) support.

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
    "NOT_SUPPORTED": "*string*",
    "SUPPORTED": "*string*"
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



## Get AS112 DNS queries by IP version summary

**GET** `/radar/as112/summary/ip_version`

Retrieves the distribution of DNS queries to AS112 by IP version.

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
    "IPv4": "*string*",
    "IPv6": "*string*"
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



## Get AS112 DNS queries by DNS protocol summary

**GET** `/radar/as112/summary/protocol`

Retrieves the distribution of DNS queries to AS112 by protocol.

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
    "HTTPS": "*string*",
    "TCP": "*string*",
    "TLS": "*string*",
    "UDP": "*string*"
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



## Get AS112 DNS queries by type summary

**GET** `/radar/as112/summary/query_type`

Retrieves the distribution of DNS queries to AS112 by type.

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
  "summary_0": {}
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



## Get AS112 DNS queries by response code summary

**GET** `/radar/as112/summary/response_codes`

Retrieves the distribution of AS112 DNS requests classified by response code.

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
  "summary_0": {}
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



## Get AS112 summary by dimension

**GET** `/radar/as112/summary/{dimension}`

Retrieves the distribution of AS112 queries by the specified dimension.

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
  "summary_0": {}
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



## Get AS112 DNS queries time series

**GET** `/radar/as112/timeseries`

Retrieves the AS112 DNS queries over time.

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



## Get AS112 DNS queries by DNSSEC support time series

**GET** `/radar/as112/timeseries_groups/dnssec`

Retrieves the distribution of AS112 DNS queries by DNSSEC (DNS Security Extensions) support over time.

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
    "NOT_SUPPORTED": [
      "*string*"
    ],
    "SUPPORTED": [
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



## Get AS112 DNS queries by EDNS support summary

**GET** `/radar/as112/timeseries_groups/edns`

Retrieves the distribution of AS112 DNS queries by EDNS (Extension Mechanisms for DNS) support over time.

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
    "NOT_SUPPORTED": [
      "*string*"
    ],
    "SUPPORTED": [
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



## Get AS112 DNS queries by IP version time series

**GET** `/radar/as112/timeseries_groups/ip_version`

Retrieves the distribution of AS112 DNS queries by IP version over time.

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
    "IPv4": [
      "*string*"
    ],
    "IPv6": [
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



## Get AS112 DNS queries by DNS protocol time series

**GET** `/radar/as112/timeseries_groups/protocol`

Retrieves the distribution of AS112 DNS requests classified by protocol over time.

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
    "HTTPS": [
      "*string*"
    ],
    "TCP": [
      "*string*"
    ],
    "TLS": [
      "*string*"
    ],
    "UDP": [
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



## Get AS112 DNS queries by type time series

**GET** `/radar/as112/timeseries_groups/query_type`

Retrieves the distribution of AS112 DNS queries by type over time.

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



## Get AS112 DNS queries by response code time series

**GET** `/radar/as112/timeseries_groups/response_codes`

Retrieves the distribution of AS112 DNS requests classified by response code over time.

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



## Get AS112 time series grouped by dimension

**GET** `/radar/as112/timeseries_groups/{dimension}`

Retrieves the distribution of AS112 queries grouped by dimension over time.

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



## Get top locations by AS112 DNS queries

**GET** `/radar/as112/top/locations`

Retrieves the top locations by AS112 DNS queries.

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
      "clientCountryAlpha2": "*string*",
      "clientCountryName": "*string*",
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



## Get top locations by AS112 DNS queries with DNSSEC support

**GET** `/radar/as112/top/locations/dnssec/{dnssec}`

Retrieves the top locations of DNS queries to AS112 with DNSSEC (DNS Security Extensions) support.

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
      "clientCountryAlpha2": "*string*",
      "clientCountryName": "*string*",
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



## Get top locations by AS112 DNS queries with EDNS support

**GET** `/radar/as112/top/locations/edns/{edns}`

Retrieves the top locations of DNS queries to AS112 with EDNS (Extension Mechanisms for DNS) support.

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
      "clientCountryAlpha2": "*string*",
      "clientCountryName": "*string*",
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



## Get top locations by AS112 DNS queries for an IP version

**GET** `/radar/as112/top/locations/ip_version/{ip_version}`

Retrieves the top locations of DNS queries to AS112 for an IP version.

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
      "clientCountryAlpha2": "*string*",
      "clientCountryName": "*string*",
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


