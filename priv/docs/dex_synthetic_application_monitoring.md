# DEX Synthetic Application Monitoring

## List Cloudflare colos

**GET** `/accounts/{account_id}/dex/colos`

List Cloudflare colos that account's devices were connected to during a time period, sorted by usage starting from the most used colo. Colos without traffic are also returned and sorted alphabetically.

### Responses

#### 200 List colos response

> Data is at `body["result"]`

```json
[
  {
    "airportCode": "*string*",
    "city": "*string*",
    "countryCode": "*string*"
  }
]
```

#### 4XX List colos failure response

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



## Get the live status of a latest device

**GET** `/accounts/{account_id}/dex/devices/{device_id}/fleet-status/live`

Get the live status of a latest device given device_id from the device_state table

### Responses

#### 200 Get the live status of a latest device

> Data is at `body["result"]`

```json
{
  "connectionType": "*string*",
  "switchLocked": "*boolean*",
  "mode": "*string*",
  "firewallEnabled": "*boolean*",
  "ramAvailableKb": "*integer*",
  "networkRcvdBps": "*integer*",
  "batteryCharging": "*boolean*",
  "colo": "*string*",
  "networkSsid": "*string*",
  "deviceIpv6": {
    "address": "*string*",
    "asn": "*integer*",
    "aso": "*string*",
    "location": {
      "city": "*string*",
      "country_iso": "*string*",
      "state_iso": "*string*",
      "zip": "*string*"
    },
    "netmask": "*string*",
    "version": "*string*"
  },
  "gatewayIpv4": {
    "address": "*string*",
    "asn": "*integer*",
    "aso": "*string*",
    "location": {
      "city": "*string*",
      "country_iso": "*string*",
      "state_iso": "*string*",
      "zip": "*string*"
    },
    "netmask": "*string*",
    "version": "*string*"
  },
  "deviceName": "*string*",
  "gatewayIpv6": {
    "address": "*string*",
    "asn": "*integer*",
    "aso": "*string*",
    "location": {
      "city": "*string*",
      "country_iso": "*string*",
      "state_iso": "*string*",
      "zip": "*string*"
    },
    "netmask": "*string*",
    "version": "*string*"
  },
  "platform": "*string*",
  "ramUsedPct": "*number*",
  "diskUsagePct": "*number*",
  "status": "*string*",
  "personEmail": "*string*",
  "cpuPctByApp": [
    [
      {
        "cpu_pct": "*number*",
        "name": "*string*"
      }
    ]
  ],
  "batteryPct": "*number*",
  "alwaysOn": "*boolean*",
  "ramUsedPctByApp": [
    [
      {
        "name": "*string*",
        "ram_used_pct": "*number*"
      }
    ]
  ],
  "batteryCycles": "*integer*",
  "deviceId": "*string*",
  "handshakeLatencyMs": "*number*",
  "networkSentBps": "*integer*",
  "cpuPct": "*number*",
  "ispIpv4": {
    "address": "*string*",
    "asn": "*integer*",
    "aso": "*string*",
    "location": {
      "city": "*string*",
      "country_iso": "*string*",
      "state_iso": "*string*",
      "zip": "*string*"
    },
    "netmask": "*string*",
    "version": "*string*"
  },
  "timestamp": "*string*",
  "diskReadBps": "*integer*",
  "ispIpv6": {
    "address": "*string*",
    "asn": "*integer*",
    "aso": "*string*",
    "location": {
      "city": "*string*",
      "country_iso": "*string*",
      "state_iso": "*string*",
      "zip": "*string*"
    },
    "netmask": "*string*",
    "version": "*string*"
  },
  "metal": "*string*",
  "dohSubdomain": "*string*",
  "wifiStrengthDbm": "*integer*",
  "deviceIpv4": {
    "address": "*string*",
    "asn": "*integer*",
    "aso": "*string*",
    "location": {
      "city": "*string*",
      "country_iso": "*string*",
      "state_iso": "*string*",
      "zip": "*string*"
    },
    "netmask": "*string*",
    "version": "*string*"
  },
  "diskWriteBps": "*integer*",
  "estimatedLossPct": "*number*",
  "version": "*string*"
}
```

#### 4XX Get the live status of a latest device failure

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



## List fleet status devices

**GET** `/accounts/{account_id}/dex/fleet-status/devices`

List details for devices using WARP

### Responses

#### 200 List devices response

> Data is at `body["result"]`

```json
[
  {
    "connectionType": "*string*",
    "switchLocked": "*boolean*",
    "mode": "*string*",
    "firewallEnabled": "*boolean*",
    "ramAvailableKb": "*integer*",
    "networkRcvdBps": "*integer*",
    "batteryCharging": "*boolean*",
    "colo": "*string*",
    "networkSsid": "*string*",
    "deviceIpv6": {
      "address": "*string*",
      "asn": "*integer*",
      "aso": "*string*",
      "location": {
        "city": null,
        "country_iso": null,
        "state_iso": null,
        "zip": null
      },
      "netmask": "*string*",
      "version": "*string*"
    },
    "gatewayIpv4": {
      "address": "*string*",
      "asn": "*integer*",
      "aso": "*string*",
      "location": {
        "city": null,
        "country_iso": null,
        "state_iso": null,
        "zip": null
      },
      "netmask": "*string*",
      "version": "*string*"
    },
    "deviceName": "*string*",
    "gatewayIpv6": {
      "address": "*string*",
      "asn": "*integer*",
      "aso": "*string*",
      "location": {
        "city": null,
        "country_iso": null,
        "state_iso": null,
        "zip": null
      },
      "netmask": "*string*",
      "version": "*string*"
    },
    "platform": "*string*",
    "ramUsedPct": "*number*",
    "diskUsagePct": "*number*",
    "status": "*string*",
    "personEmail": "*string*",
    "cpuPctByApp": [
      [
        null
      ]
    ],
    "batteryPct": "*number*",
    "alwaysOn": "*boolean*",
    "ramUsedPctByApp": [
      [
        null
      ]
    ],
    "batteryCycles": "*integer*",
    "deviceId": "*string*",
    "handshakeLatencyMs": "*number*",
    "networkSentBps": "*integer*",
    "cpuPct": "*number*",
    "ispIpv4": {
      "address": "*string*",
      "asn": "*integer*",
      "aso": "*string*",
      "location": {
        "city": null,
        "country_iso": null,
        "state_iso": null,
        "zip": null
      },
      "netmask": "*string*",
      "version": "*string*"
    },
    "timestamp": "*string*",
    "diskReadBps": "*integer*",
    "ispIpv6": {
      "address": "*string*",
      "asn": "*integer*",
      "aso": "*string*",
      "location": {
        "city": null,
        "country_iso": null,
        "state_iso": null,
        "zip": null
      },
      "netmask": "*string*",
      "version": "*string*"
    },
    "metal": "*string*",
    "dohSubdomain": "*string*",
    "wifiStrengthDbm": "*integer*",
    "deviceIpv4": {
      "address": "*string*",
      "asn": "*integer*",
      "aso": "*string*",
      "location": {
        "city": null,
        "country_iso": null,
        "state_iso": null,
        "zip": null
      },
      "netmask": "*string*",
      "version": "*string*"
    },
    "diskWriteBps": "*integer*",
    "estimatedLossPct": "*number*",
    "version": "*string*"
  }
]
```

#### 4XX List devices response failure

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



## List fleet status details by dimension

**GET** `/accounts/{account_id}/dex/fleet-status/live`

List details for live (up to 60 minutes) devices using WARP

### Responses

#### 200 List device details (live) response

> Data is at `body["result"]`

```json
{
  "deviceStats": {
    "byColo": [
      {
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "byMode": [
      {
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "byPlatform": [
      {
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "byStatus": [
      {
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "byVersion": [
      {
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "uniqueDevicesTotal": "*number*"
  }
}
```

#### 4XX List device details (live) response failure

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



## List fleet status aggregate details by dimension

**GET** `/accounts/{account_id}/dex/fleet-status/over-time`

List details for devices using WARP, up to 7 days

### Responses

#### 200 List DEX devices response

> Data is at `body["result"]`

```json
{
  "deviceStats": {
    "byMode": [
      {
        "timestamp": null,
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "byStatus": [
      {
        "timestamp": null,
        "uniqueDevicesTotal": null,
        "value": "*string*"
      }
    ],
    "uniqueDevicesTotal": "*number*"
  }
}
```

#### 4XX DEX HTTP test details failure response

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



## Get details and aggregate metrics for an http test

**GET** `/accounts/{account_id}/dex/http-tests/{test_id}`

Get test details and aggregate performance metrics for an http test for a given time period between 1 hour and 7 days.

### Responses

#### 200 DEX HTTP test details response

> Data is at `body["result"]`

```json
{
  "host": "*string*",
  "httpStats": {
    "availabilityPct": {
      "avg": "*number*",
      "max": "*number*",
      "min": "*number*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "dnsResponseTimeMs": {
      "avg": "*integer*",
      "max": "*integer*",
      "min": "*integer*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "httpStatusCode": [
      {
        "status200": "*integer*",
        "status300": "*integer*",
        "status400": "*integer*",
        "status500": "*integer*",
        "timestamp": "*string*"
      }
    ],
    "resourceFetchTimeMs": {
      "avg": "*integer*",
      "max": "*integer*",
      "min": "*integer*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "serverResponseTimeMs": {
      "avg": "*integer*",
      "max": "*integer*",
      "min": "*integer*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "uniqueDevicesTotal": "*integer*"
  },
  "httpStatsByColo": [
    {
      "availabilityPct": {
        "avg": "*number*",
        "max": "*number*",
        "min": "*number*",
        "slots": [
          null
        ]
      },
      "colo": "*string*",
      "dnsResponseTimeMs": {
        "avg": "*integer*",
        "max": "*integer*",
        "min": "*integer*",
        "slots": [
          null
        ]
      },
      "httpStatusCode": [
        {
          "status200": "*integer*",
          "status300": "*integer*",
          "status400": "*integer*",
          "status500": "*integer*",
          "timestamp": "*string*"
        }
      ],
      "resourceFetchTimeMs": {
        "avg": "*integer*",
        "max": "*integer*",
        "min": "*integer*",
        "slots": [
          null
        ]
      },
      "serverResponseTimeMs": {
        "avg": "*integer*",
        "max": "*integer*",
        "min": "*integer*",
        "slots": [
          null
        ]
      },
      "uniqueDevicesTotal": "*integer*"
    }
  ],
  "interval": "*string*",
  "kind": null,
  "method": "*string*",
  "name": "*string*",
  "target_policies": [
    {
      "default": "*boolean*",
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "targeted": "*boolean*"
}
```

#### 4XX DEX HTTP test details failure response

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



## Get percentiles for an http test

**GET** `/accounts/{account_id}/dex/http-tests/{test_id}/percentiles`

Get percentiles for an http test for a given time period between 1 hour and 7 days.

### Responses

#### 200 DEX HTTP test percentiles response

> Data is at `body["result"]`

```json
{
  "dnsResponseTimeMs": {
    "p50": "*number*",
    "p90": "*number*",
    "p95": "*number*",
    "p99": "*number*"
  },
  "resourceFetchTimeMs": {
    "p50": "*number*",
    "p90": "*number*",
    "p95": "*number*",
    "p99": "*number*"
  },
  "serverResponseTimeMs": {
    "p50": "*number*",
    "p90": "*number*",
    "p95": "*number*",
    "p99": "*number*"
  }
}
```

#### 4XX DEX HTTP test percentiles failure response

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



## List DEX test analytics

**GET** `/accounts/{account_id}/dex/tests/overview`

List DEX tests with overview metrics

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
{
  "overviewMetrics": {
    "avgHttpAvailabilityPct": "*number*",
    "avgTracerouteAvailabilityPct": "*number*",
    "testsTotal": "*integer*"
  },
  "tests": [
    {
      "created": "*string*",
      "description": "*string*",
      "enabled": "*boolean*",
      "host": "*string*",
      "httpResults": {
        "resourceFetchTime": {
          "avgMs": null,
          "history": null,
          "overTime": null
        }
      },
      "httpResultsByColo": [
        {
          "colo": "*string*",
          "resourceFetchTime": null
        }
      ],
      "id": "*string*",
      "interval": "*string*",
      "kind": "*string*",
      "method": "*string*",
      "name": "*string*",
      "target_policies": [
        {
          "default": "*boolean*",
          "id": null,
          "name": "*string*"
        }
      ],
      "targeted": "*boolean*",
      "tracerouteResults": {
        "roundTripTime": {
          "avgMs": null,
          "history": null,
          "overTime": null
        }
      },
      "tracerouteResultsByColo": [
        {
          "colo": "*string*",
          "roundTripTime": null
        }
      ],
      "updated": "*string*"
    }
  ]
}
```

#### 4XX failure response

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



## Get count of devices targeted

**GET** `/accounts/{account_id}/dex/tests/unique-devices`

Returns unique count of devices that have run synthetic application monitoring tests in the past 7 days.

### Responses

#### 200 DEX unique devices targeted response

> Data is at `body["result"]`

```json
{
  "uniqueDevicesTotal": "*integer*"
}
```

#### 4XX DEX unique devices targeted failure response

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



## Get details for a specific traceroute test run

**GET** `/accounts/{account_id}/dex/traceroute-test-results/{test_result_id}/network-path`

Get a breakdown of hops and performance metrics for a specific traceroute test run

### Responses

#### 200 DEX traceroute test result network path response

> Data is at `body["result"]`

```json
{
  "deviceName": "*string*",
  "hops": [
    {
      "asn": "*integer*",
      "aso": "*string*",
      "ipAddress": "*string*",
      "location": {
        "city": "*string*",
        "state": "*string*",
        "zip": "*string*"
      },
      "mile": "*string*",
      "name": "*string*",
      "packetLossPct": "*number*",
      "rttMs": "*integer*",
      "ttl": "*integer*"
    }
  ],
  "resultId": "*string*",
  "testId": "*string*",
  "testName": "*string*"
}
```

#### 4XX DEX traceroute test result network path failure response

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



## Get details and aggregate metrics for a traceroute test

**GET** `/accounts/{account_id}/dex/traceroute-tests/{test_id}`

Get test details and aggregate performance metrics for an traceroute test for a given time period between 1 hour and 7 days.

### Responses

#### 200 DEX traceroute test details response

> Data is at `body["result"]`

```json
{
  "host": "*string*",
  "interval": "*string*",
  "kind": null,
  "name": "*string*",
  "target_policies": [
    {
      "default": "*boolean*",
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "targeted": "*boolean*",
  "tracerouteStats": {
    "availabilityPct": {
      "avg": "*number*",
      "max": "*number*",
      "min": "*number*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "hopsCount": {
      "avg": "*integer*",
      "max": "*integer*",
      "min": "*integer*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "packetLossPct": {
      "avg": "*number*",
      "max": "*number*",
      "min": "*number*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "roundTripTimeMs": {
      "avg": "*integer*",
      "max": "*integer*",
      "min": "*integer*",
      "slots": [
        {
          "timestamp": null,
          "value": null
        }
      ]
    },
    "uniqueDevicesTotal": "*integer*"
  },
  "tracerouteStatsByColo": [
    {
      "availabilityPct": {
        "avg": "*number*",
        "max": "*number*",
        "min": "*number*",
        "slots": [
          null
        ]
      },
      "colo": "*string*",
      "hopsCount": {
        "avg": "*integer*",
        "max": "*integer*",
        "min": "*integer*",
        "slots": [
          null
        ]
      },
      "packetLossPct": {
        "avg": "*number*",
        "max": "*number*",
        "min": "*number*",
        "slots": [
          null
        ]
      },
      "roundTripTimeMs": {
        "avg": "*integer*",
        "max": "*integer*",
        "min": "*integer*",
        "slots": [
          null
        ]
      },
      "uniqueDevicesTotal": "*integer*"
    }
  ]
}
```

#### 4XX DEX traceroute test details response failure response

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



## Get network path breakdown for a traceroute test

**GET** `/accounts/{account_id}/dex/traceroute-tests/{test_id}/network-path`

Get a breakdown of metrics by hop for individual traceroute test runs

### Responses

#### 200 DEX traceroute test network path response

> Data is at `body["result"]`

```json
{
  "deviceName": "*string*",
  "id": "*string*",
  "interval": "*string*",
  "kind": null,
  "name": "*string*",
  "networkPath": {
    "sampling": {
      "unit": null,
      "value": "*integer*"
    },
    "slots": [
      {
        "clientToAppRttMs": "*integer*",
        "clientToCfEgressRttMs": "*integer*",
        "clientToCfIngressRttMs": "*integer*",
        "clientToIspRttMs": "*integer*",
        "id": "*string*",
        "timestamp": "*string*"
      }
    ]
  },
  "url": "*string*"
}
```

#### 4XX DEX traceroute test network path failure response

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



## Get percentiles for a traceroute test

**GET** `/accounts/{account_id}/dex/traceroute-tests/{test_id}/percentiles`

Get percentiles for a traceroute test for a given time period between 1 hour and 7 days.

### Responses

#### 200 DEX Traceroute test percentiles response

> Data is at `body["result"]`

```json
{
  "hopsCount": {
    "p50": "*number*",
    "p90": "*number*",
    "p95": "*number*",
    "p99": "*number*"
  },
  "packetLossPct": {
    "p50": "*number*",
    "p90": "*number*",
    "p95": "*number*",
    "p99": "*number*"
  },
  "roundTripTimeMs": {
    "p50": "*number*",
    "p90": "*number*",
    "p95": "*number*",
    "p99": "*number*"
  }
}
```

#### 4XX DEX Traceroute test percentiles failure response

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


