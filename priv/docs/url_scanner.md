# URL Scanner

## Bulk create URL Scans

**POST** `/accounts/{account_id}/urlscanner/v2/bulk`

Submit URLs to scan. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/ and take into account scans submitted in bulk have lower priority and may take longer to finish.

### Responses

#### 200 Scan bulk request accepted successfully.

> Data is at `body["result"]`

```json
[
  {
    "api": "*string*",
    "options": {
      "useragent": "*string*"
    },
    "result": "*string*",
    "url": "*string*",
    "uuid": "*string*",
    "visibility": "*string*"
  }
]
```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```

#### 429 Scan request denied: rate limited.

```json
{
  "description": "*string*",
  "errors": [
    {
      "detail": "*string*",
      "status": "*number*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*number*"
}
```



## Get URL scan's DOM

**GET** `/accounts/{account_id}/urlscanner/v2/dom/{scan_id}`

Returns a plain text response, with the scan's DOM content as rendered by Chrome.

### Responses

#### 200 Returns a plain text response, with the scan's DOM content as rendered by Chrome.

> Data is at `body["result"]`

```json

```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```

#### 404 Scan not found or in progress.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*",
  "task": {
    "status": "*string*",
    "time": "*string*",
    "url": "*string*",
    "uuid": "*string*",
    "visibility": "*string*"
  }
}
```



## Get URL scan's HAR

**GET** `/accounts/{account_id}/urlscanner/v2/har/{scan_id}`

Get a URL scan's HAR file. See HAR spec at http://www.softwareishard.com/blog/har-12-spec/.

### Responses

#### 200 Returns the scan's har.

> Data is at `body["result"]`

```json
{
  "log": {
    "creator": {
      "comment": "*string*",
      "name": "*string*",
      "version": "*string*"
    },
    "entries": [
      {
        "_initialPriority": "*string*",
        "_initiator_type": "*string*",
        "_priority": "*string*",
        "_requestId": "*string*",
        "_requestTime": "*number*",
        "_resourceType": "*string*",
        "cache": {},
        "connection": "*string*",
        "pageref": "*string*",
        "request": {
          "bodySize": "*number*",
          "headers": [
            null
          ],
          "headersSize": "*number*",
          "httpVersion": "*string*",
          "method": "*string*",
          "url": "*string*"
        },
        "response": {
          "_transferSize": "*number*",
          "bodySize": "*number*",
          "content": {
            "compression": null,
            "mimeType": null,
            "size": null
          },
          "headers": [
            null
          ],
          "headersSize": "*number*",
          "httpVersion": "*string*",
          "redirectURL": "*string*",
          "status": "*number*",
          "statusText": "*string*"
        },
        "serverIPAddress": "*string*",
        "startedDateTime": "*string*",
        "time": "*number*"
      }
    ],
    "pages": [
      {
        "id": "*string*",
        "pageTimings": {
          "onContentLoad": "*number*",
          "onLoad": "*number*"
        },
        "startedDateTime": "*string*",
        "title": "*string*"
      }
    ],
    "version": "*string*"
  }
}
```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```

#### 404 Scan not found or in progress.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*",
  "task": {
    "status": "*string*",
    "time": "*string*",
    "url": "*string*",
    "uuid": "*string*",
    "visibility": "*string*"
  }
}
```



## Get raw response

**GET** `/accounts/{account_id}/urlscanner/v2/responses/{response_id}`

Returns the raw response of the network request. Find the `response_id` in the `data.requests.response.hash`.

### Responses

#### 200 Get the raw response by its hash.

> Data is at `body["result"]`

```json

```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```



## Get URL scan

**GET** `/accounts/{account_id}/urlscanner/v2/result/{scan_id}`

Get URL scan by uuid

### Responses

#### 200 Scan has finished. It may or may not have been successful.

> Data is at `body["result"]`

```json
{
  "data": {
    "console": [
      {
        "message": {
          "level": "*string*",
          "source": "*string*",
          "text": "*string*",
          "url": "*string*"
        }
      }
    ],
    "cookies": [
      {
        "domain": "*string*",
        "expires": "*number*",
        "httpOnly": "*boolean*",
        "name": "*string*",
        "path": "*string*",
        "priority": "*string*",
        "sameParty": "*boolean*",
        "secure": "*boolean*",
        "session": "*boolean*",
        "size": "*number*",
        "sourcePort": "*number*",
        "sourceScheme": "*string*",
        "value": "*string*"
      }
    ],
    "globals": [
      {
        "prop": "*string*",
        "type": "*string*"
      }
    ],
    "links": [
      {
        "href": "*string*",
        "text": "*string*"
      }
    ],
    "performance": [
      {
        "duration": "*number*",
        "entryType": "*string*",
        "name": "*string*",
        "startTime": "*number*"
      }
    ],
    "requests": [
      {
        "request": {
          "documentURL": "*string*",
          "frameId": "*string*",
          "hasUserGesture": "*boolean*",
          "initiator": {
            "host": null,
            "type": null,
            "url": null
          },
          "loaderId": "*string*",
          "primaryRequest": "*boolean*",
          "redirectHasExtraInfo": "*boolean*",
          "redirectResponse": {
            "charset": null,
            "headers": null,
            "mimeType": null,
            "protocol": null,
            "remoteIPAddress": null,
            "remotePort": null,
            "securityHeaders": null,
            "securityState": null,
            "status": null,
            "statusText": null,
            "url": null
          },
          "request": {
            "headers": null,
            "initialPriority": null,
            "isSameSite": null,
            "method": null,
            "mixedContentType": null,
            "referrerPolicy": null,
            "url": null
          },
          "requestId": "*string*",
          "type": "*string*",
          "wallTime": "*number*"
        },
        "requests": [
          {
            "documentURL": null,
            "frameId": null,
            "hasUserGesture": null,
            "initiator": null,
            "loaderId": null,
            "redirectHasExtraInfo": null,
            "request": null,
            "requestId": null,
            "type": null,
            "wallTime": null
          }
        ],
        "response": {
          "asn": {
            "asn": null,
            "country": null,
            "description": null,
            "ip": null,
            "name": null,
            "org": null
          },
          "contentAvailable": "*boolean*",
          "dataLength": "*number*",
          "encodedDataLength": "*number*",
          "geoip": {
            "city": null,
            "country": null,
            "country_name": null,
            "geonameId": null,
            "ll": null,
            "region": null
          },
          "hasExtraInfo": "*boolean*",
          "hash": "*string*",
          "requestId": "*string*",
          "response": {
            "charset": null,
            "headers": null,
            "mimeType": null,
            "protocol": null,
            "remoteIPAddress": null,
            "remotePort": null,
            "securityDetails": null,
            "securityHeaders": null,
            "securityState": null,
            "status": null,
            "statusText": null,
            "url": null
          },
          "size": "*number*",
          "type": "*string*"
        }
      }
    ]
  },
  "lists": {
    "asns": [
      "*string*"
    ],
    "certificates": [
      {
        "issuer": "*string*",
        "subjectName": "*string*",
        "validFrom": "*number*",
        "validTo": "*number*"
      }
    ],
    "continents": [
      "*string*"
    ],
    "countries": [
      "*string*"
    ],
    "domains": [
      "*string*"
    ],
    "hashes": [
      "*string*"
    ],
    "ips": [
      "*string*"
    ],
    "linkDomains": [
      "*string*"
    ],
    "servers": [
      "*string*"
    ],
    "urls": [
      "*string*"
    ]
  },
  "meta": {
    "processors": {
      "asn": {
        "data": [
          {
            "asn": null,
            "country": null,
            "description": null,
            "ip": null,
            "name": null
          }
        ]
      },
      "dns": {
        "data": [
          {
            "address": null,
            "dnssec_valid": null,
            "name": null,
            "type": null
          }
        ]
      },
      "domainCategories": {
        "data": [
          {
            "inherited": null,
            "isPrimary": null,
            "name": null
          }
        ]
      },
      "geoip": {
        "data": [
          {
            "geoip": null,
            "ip": null
          }
        ]
      },
      "phishing": {
        "data": [
          "*string*"
        ]
      },
      "radarRank": {
        "data": [
          {
            "bucket": null,
            "hostname": null,
            "rank": null
          }
        ]
      },
      "robotsTxt": {
        "data": [
          {
            "hash": null,
            "rules": null,
            "sitemaps": null
          }
        ]
      },
      "urlCategories": {
        "data": [
          {
            "content": null,
            "inherited": null,
            "name": null,
            "risks": null
          }
        ]
      },
      "wappa": {
        "data": [
          {
            "app": null,
            "categories": null,
            "confidence": null,
            "confidenceTotal": null,
            "icon": null,
            "website": null
          }
        ]
      }
    }
  },
  "page": {
    "apexDomain": "*string*",
    "asn": "*string*",
    "asnname": "*string*",
    "city": "*string*",
    "country": "*string*",
    "domain": "*string*",
    "ip": "*string*",
    "mimeType": "*string*",
    "screenshot": {
      "dhash": "*string*",
      "mm3Hash": "*number*",
      "name": "*string*",
      "phash": "*string*"
    },
    "server": "*string*",
    "status": "*string*",
    "title": "*string*",
    "tlsAgeDays": "*number*",
    "tlsIssuer": "*string*",
    "tlsValidDays": "*number*",
    "tlsValidFrom": "*string*",
    "url": "*string*"
  },
  "scanner": {
    "colo": "*string*",
    "country": "*string*"
  },
  "stats": {
    "IPv6Percentage": "*number*",
    "domainStats": [
      {
        "count": "*number*",
        "countries": [
          "*string*"
        ],
        "domain": "*string*",
        "encodedSize": "*number*",
        "index": "*number*",
        "initiators": [
          "*string*"
        ],
        "ips": [
          "*string*"
        ],
        "redirects": "*number*",
        "size": "*number*"
      }
    ],
    "ipStats": [
      {
        "asn": {
          "asn": "*string*",
          "country": "*string*",
          "description": "*string*",
          "ip": "*string*",
          "name": "*string*",
          "org": "*string*"
        },
        "count": "*number*",
        "countries": [
          "*string*"
        ],
        "domains": [
          "*string*"
        ],
        "encodedSize": "*number*",
        "geoip": {
          "city": "*string*",
          "country": "*string*",
          "country_name": "*string*",
          "ll": [
            null
          ],
          "region": "*string*"
        },
        "index": "*number*",
        "ip": "*string*",
        "ipv6": "*boolean*",
        "redirects": "*number*",
        "requests": "*number*",
        "size": "*number*"
      }
    ],
    "malicious": "*number*",
    "protocolStats": [
      {
        "count": "*number*",
        "countries": [
          "*string*"
        ],
        "encodedSize": "*number*",
        "ips": [
          "*string*"
        ],
        "protocol": "*string*",
        "size": "*number*"
      }
    ],
    "resourceStats": [
      {
        "compression": "*number*",
        "count": "*number*",
        "countries": [
          "*string*"
        ],
        "encodedSize": "*number*",
        "ips": [
          "*string*"
        ],
        "percentage": "*number*",
        "size": "*number*",
        "type": "*string*"
      }
    ],
    "securePercentage": "*number*",
    "secureRequests": "*number*",
    "serverStats": [
      {
        "count": "*number*",
        "countries": [
          "*string*"
        ],
        "encodedSize": "*number*",
        "ips": [
          "*string*"
        ],
        "server": "*string*",
        "size": "*number*"
      }
    ],
    "tlsStats": [
      {
        "count": "*number*",
        "countries": [
          "*string*"
        ],
        "encodedSize": "*number*",
        "ips": [
          "*string*"
        ],
        "protocols": {
          "TLS 1.3 / AES_128_GCM": "*number*"
        },
        "securityState": "*string*",
        "size": "*number*"
      }
    ],
    "totalLinks": "*number*",
    "uniqASNs": "*number*",
    "uniqCountries": "*number*"
  },
  "task": {
    "apexDomain": "*string*",
    "domURL": "*string*",
    "domain": "*string*",
    "method": "*string*",
    "options": {
      "customHeaders": {},
      "screenshotsResolutions": [
        "*string*"
      ]
    },
    "reportURL": "*string*",
    "screenshotURL": "*string*",
    "source": "*string*",
    "success": "*boolean*",
    "time": "*string*",
    "url": "*string*",
    "uuid": "*string*",
    "visibility": "*string*"
  },
  "verdicts": {
    "overall": {
      "categories": [
        "*string*"
      ],
      "hasVerdicts": "*boolean*",
      "malicious": "*boolean*",
      "tags": [
        "*string*"
      ]
    }
  }
}
```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```

#### 404 Scan not found or in progress.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*",
  "task": {
    "status": "*string*",
    "time": "*string*",
    "url": "*string*",
    "uuid": "*string*",
    "visibility": "*string*"
  }
}
```



## Create URL Scan

**POST** `/accounts/{account_id}/urlscanner/v2/scan`

Submit a URL to scan. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/.

### Responses

#### 200 Scan request accepted successfully.

> Data is at `body["result"]`

```json
"*string*"
```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```

#### 409 Scan request denied: hostname was recently scanned.

```json
{
  "description": "*string*",
  "errors": [
    {
      "detail": "*string*",
      "status": "*number*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*number*"
}
```

#### 429 Scan request denied: rate limited.

```json
{
  "description": "*string*",
  "errors": [
    {
      "detail": "*string*",
      "status": "*number*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*number*"
}
```



## Get screenshot

**GET** `/accounts/{account_id}/urlscanner/v2/screenshots/{scan_id}.png`

Get scan's screenshot by resolution (desktop/mobile/tablet).

### Responses

#### 200 Returns the scan's requested screenshot.

> Data is at `body["result"]`

```json

```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```

#### 404 Scan not found or in progress.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*",
  "task": {
    "status": "*string*",
    "time": "*string*",
    "url": "*string*",
    "uuid": "*string*",
    "visibility": "*string*"
  }
}
```



## Search URL scans

**GET** `/accounts/{account_id}/urlscanner/v2/search`

Use a subset of ElasticSearch Query syntax to filter scans. Some example queries:<br/> <br/>- 'path:"/bundles/jquery.js"': Searches for scans who requested resources with the given path.<br/>- 'page.asn:AS24940 AND hash:xxx': Websites hosted in AS24940 where a resource with the given hash was downloaded.<br/>- 'page.domain:microsoft* AND verdicts.malicious:true AND NOT page.domain:microsoft.com': malicious scans whose hostname starts with "microsoft".<br/>- 'apikey:me AND date:[2025-01 TO 2025-02]': my scans from 2025 January to 2025 February.

### Responses

#### 200 Search results

> Data is at `body["result"]`

```json
{
  "results": [
    {
      "_id": "*string*",
      "page": {
        "asn": "*string*",
        "country": "*string*",
        "ip": "*string*",
        "url": "*string*"
      },
      "result": "*string*",
      "stats": {
        "dataLength": "*number*",
        "requests": "*number*",
        "uniqCountries": "*number*",
        "uniqIPs": "*number*"
      },
      "task": {
        "time": "*string*",
        "url": "*string*",
        "uuid": "*string*",
        "visibility": "*string*"
      },
      "verdicts": {
        "malicious": "*boolean*"
      }
    }
  ]
}
```

#### 400 Invalid input.

```json
{
  "errors": [
    {
      "detail": "*string*",
      "status": "*integer*",
      "title": "*string*"
    }
  ],
  "message": "*string*",
  "status": "*integer*"
}
```


