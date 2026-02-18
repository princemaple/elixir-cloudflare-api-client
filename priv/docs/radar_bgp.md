# Radar BGP

## Get BGP hijack events

**GET** `/radar/bgp/hijacks/events`

Retrieves the BGP hijack events.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asn_info": [
    {
      "asn": "*integer*",
      "country_code": "*string*",
      "org_name": "*string*"
    }
  ],
  "events": [
    {
      "confidence_score": "*integer*",
      "duration": "*integer*",
      "event_type": "*integer*",
      "hijack_msgs_count": "*integer*",
      "hijacker_asn": "*integer*",
      "hijacker_country": "*string*",
      "id": "*integer*",
      "is_stale": "*boolean*",
      "max_hijack_ts": "*string*",
      "max_msg_ts": "*string*",
      "min_hijack_ts": "*string*",
      "on_going_count": "*integer*",
      "peer_asns": [
        "*integer*"
      ],
      "peer_ip_count": "*integer*",
      "prefixes": [
        "*string*"
      ],
      "tags": [
        {
          "name": "*string*",
          "score": "*integer*"
        }
      ],
      "victim_asns": [
        "*integer*"
      ],
      "victim_countries": [
        "*string*"
      ]
    }
  ],
  "total_monitors": "*integer*"
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



## Get announced IP address space time series

**GET** `/radar/bgp/ips/timeseries`

Retrieves time series data for the announced IP space count, represented as the number of IPv4 /24s and IPv6 /48s, for a given ASN.

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
    "delay": {
      "asn_data": {
        "delaySecs": "*number*",
        "delayStr": "*string*",
        "healthy": "*boolean*",
        "latest": {
          "entries_count": "*number*",
          "path": "*string*",
          "timestamp": "*number*"
        }
      },
      "country_data": {
        "delaySecs": "*number*",
        "delayStr": "*string*",
        "healthy": "*boolean*",
        "latest": {
          "count": "*number*",
          "timestamp": "*number*"
        }
      },
      "healthy": "*boolean*",
      "nowTs": "*number*"
    },
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
    "ipv4": [
      "*string*"
    ],
    "ipv6": [
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



## Get BGP route leak events

**GET** `/radar/bgp/leaks/events`

Retrieves the BGP route leak events.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asn_info": [
    {
      "asn": "*integer*",
      "country_code": "*string*",
      "org_name": "*string*"
    }
  ],
  "events": [
    {
      "countries": [
        "*string*"
      ],
      "detected_ts": "*string*",
      "finished": "*boolean*",
      "id": "*integer*",
      "leak_asn": "*integer*",
      "leak_count": "*integer*",
      "leak_seg": [
        "*integer*"
      ],
      "leak_type": "*integer*",
      "max_ts": "*string*",
      "min_ts": "*string*",
      "origin_count": "*integer*",
      "peer_count": "*integer*",
      "prefix_count": "*integer*"
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



## List ASes from global routing tables

**GET** `/radar/bgp/routes/ases`

Retrieves all ASes in the current global routing tables with routing statistics.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asns": [
    {
      "asn": "*integer*",
      "coneSize": "*integer*",
      "country": "*string*",
      "ipv4Count": "*integer*",
      "ipv6Count": "*string*",
      "name": "*string*",
      "pfxsCount": "*integer*",
      "rpkiInvalid": "*integer*",
      "rpkiUnknown": "*integer*",
      "rpkiValid": "*integer*"
    }
  ],
  "meta": {
    "dataTime": "*string*",
    "queryTime": "*string*",
    "totalPeers": "*integer*"
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



## Get Multi-Origin AS (MOAS) prefixes

**GET** `/radar/bgp/routes/moas`

Retrieves all Multi-Origin AS (MOAS) prefixes in the global routing tables.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "data_time": "*string*",
    "query_time": "*string*",
    "total_peers": "*integer*"
  },
  "moas": [
    {
      "origins": [
        {
          "origin": "*integer*",
          "peer_count": "*integer*",
          "rpki_validation": "*string*"
        }
      ],
      "prefix": "*string*"
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



## Get prefix-to-ASN mapping

**GET** `/radar/bgp/routes/pfx2as`

Retrieves the prefix-to-ASN mapping from global routing tables.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "data_time": "*string*",
    "query_time": "*string*",
    "total_peers": "*integer*"
  },
  "prefix_origins": [
    {
      "origin": "*integer*",
      "peer_count": "*integer*",
      "prefix": "*string*",
      "rpki_validation": "*string*"
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



## Get real-time BGP routes for a prefix

**GET** `/radar/bgp/routes/realtime`

Retrieves real-time BGP routes for a prefix, using public real-time data collectors (RouteViews and RIPE RIS).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "asn_info": [
      {
        "as_name": "*string*",
        "asn": "*integer*",
        "country_code": "*string*",
        "org_id": "*string*",
        "org_name": "*string*"
      }
    ],
    "collectors": [
      {
        "collector": "*string*",
        "latest_realtime_ts": "*string*",
        "latest_rib_ts": "*string*",
        "latest_updates_ts": "*string*",
        "peers_count": "*integer*",
        "peers_v4_count": "*integer*",
        "peers_v6_count": "*integer*"
      }
    ],
    "data_time": "*string*",
    "prefix_origins": [
      {
        "origin": "*integer*",
        "prefix": "*string*",
        "rpki_validation": "*string*",
        "total_peers": "*integer*",
        "total_visible": "*integer*",
        "visibility": "*number*"
      }
    ],
    "query_time": "*string*"
  },
  "routes": [
    {
      "as_path": [
        "*integer*"
      ],
      "collector": "*string*",
      "communities": [
        "*string*"
      ],
      "prefix": "*string*",
      "timestamp": "*string*"
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



## Get BGP routing table stats 

**GET** `/radar/bgp/routes/stats`

Retrieves the BGP routing table stats.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "data_time": "*string*",
    "query_time": "*string*",
    "total_peers": "*integer*"
  },
  "stats": {
    "distinct_origins": "*integer*",
    "distinct_origins_ipv4": "*integer*",
    "distinct_origins_ipv6": "*integer*",
    "distinct_prefixes": "*integer*",
    "distinct_prefixes_ipv4": "*integer*",
    "distinct_prefixes_ipv6": "*integer*",
    "routes_invalid": "*integer*",
    "routes_invalid_ipv4": "*integer*",
    "routes_invalid_ipv6": "*integer*",
    "routes_total": "*integer*",
    "routes_total_ipv4": "*integer*",
    "routes_total_ipv6": "*integer*",
    "routes_unknown": "*integer*",
    "routes_unknown_ipv4": "*integer*",
    "routes_unknown_ipv6": "*integer*",
    "routes_valid": "*integer*",
    "routes_valid_ipv4": "*integer*",
    "routes_valid_ipv6": "*integer*"
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



## Get ASPA changes over time

**GET** `/radar/bgp/rpki/aspa/changes`

Retrieves ASPA (Autonomous System Provider Authorization) changes over time. Returns daily aggregated changes including additions, removals, and modifications of ASPA objects.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asnInfo": {
    "13335": {
      "asn": "*integer*",
      "country": "*string*",
      "name": "*string*"
    }
  },
  "changes": [
    {
      "customersAdded": "*integer*",
      "customersRemoved": "*integer*",
      "date": "*string*",
      "entries": [
        {
          "customerAsn": "*integer*",
          "providers": [
            null
          ],
          "type": "*string*"
        }
      ],
      "providersAdded": "*integer*",
      "providersRemoved": "*integer*",
      "totalCount": "*integer*"
    }
  ],
  "meta": {
    "dataTime": "*string*",
    "queryTime": "*string*"
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



## Get ASPA objects snapshot

**GET** `/radar/bgp/rpki/aspa/snapshot`

Retrieves current or historical ASPA (Autonomous System Provider Authorization) objects. ASPA objects define which ASNs are authorized upstream providers for a customer ASN.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asnInfo": {
    "13335": {
      "asn": "*integer*",
      "country": "*string*",
      "name": "*string*"
    }
  },
  "aspaObjects": [
    {
      "customerAsn": "*integer*",
      "providers": [
        "*integer*"
      ]
    }
  ],
  "meta": {
    "dataTime": "*string*",
    "queryTime": "*string*",
    "totalCount": "*integer*"
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



## Get ASPA count time series

**GET** `/radar/bgp/rpki/aspa/timeseries`

Retrieves ASPA (Autonomous System Provider Authorization) object count over time. Supports filtering by RIR or location (country code) to generate multiple named series. If no RIR or location filter is specified, returns total count.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "dataTime": "*string*",
    "queryTime": "*string*"
  },
  "serie_0": {
    "timestamps": [
      "*string*"
    ],
    "values": [
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



## Get BGP time series

**GET** `/radar/bgp/timeseries`

Retrieves BGP updates over time. When requesting updates for an autonomous system, only BGP updates of type announcement are returned.

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
    "lastUpdated": "*string*"
  },
  "serie_0": {
    "timestamps": [
      "*string*"
    ],
    "values": [
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



## Get top ASes by BGP updates

**GET** `/radar/bgp/top/ases`

Retrieves the top autonomous systems by BGP updates (announcements only).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ]
  },
  "top_0": [
    {
      "ASName": "*string*",
      "asn": "*integer*",
      "value": "*string*"
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



## Get top ASes by prefix count

**GET** `/radar/bgp/top/ases/prefixes`

Retrieves the full list of autonomous systems on the global routing table ordered by announced prefixes count. The data comes from public BGP MRT data archives and updates every 2 hours.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asns": [
    {
      "asn": "*integer*",
      "country": "*string*",
      "name": "*string*",
      "pfxs_count": "*integer*"
    }
  ],
  "meta": {
    "data_time": "*string*",
    "query_time": "*string*",
    "total_peers": "*integer*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```



## Get top prefixes by BGP updates

**GET** `/radar/bgp/top/prefixes`

Retrieves the top network prefixes by BGP updates.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ]
  },
  "top_0": [
    {
      "prefix": "*string*",
      "value": "*string*"
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


