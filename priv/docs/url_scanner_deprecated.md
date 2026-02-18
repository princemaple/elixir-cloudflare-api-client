# URL Scanner (Deprecated)

## Get raw response

**GET** `/accounts/{account_id}/urlscanner/response/{response_id}`

Returns the plain response of the network request.

### Responses

#### 200 When `har.log.entries[].response._cf.contentAvailable` is `true`, use `response._cf.hash` value to fetch the raw response.

> Data is at `body["result"]`

```json

```

#### 400 Invalid params.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Scan not found.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Create URL Scan

**POST** `/accounts/{account_id}/urlscanner/scan`

Submit a URL to scan. You can also set some options, like the visibility level and custom headers. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/.

### Responses

#### 200 Scan request accepted successfully.

> Data is at `body["result"]`

```json
{
  "time": "*string*",
  "url": "*string*",
  "uuid": "*string*",
  "visibility": "*string*"
}
```

#### 400 Invalid params.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 409 Scan request denied: hostname was recently scanned.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "result": {
    "tasks": [
      {
        "clientLocation": "*string*",
        "clientType": "*string*",
        "effectiveUrl": "*string*",
        "errors": [
          {
            "message": null
          }
        ],
        "scannedFrom": {
          "colo": "*string*"
        },
        "status": "*string*",
        "success": "*boolean*",
        "time": "*string*",
        "timeEnd": "*string*",
        "url": "*string*",
        "uuid": "*string*",
        "visibility": "*string*"
      }
    ]
  },
  "success": "*boolean*"
}
```

#### 429 Scan request denied: rate limited.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Search URL scans

**GET** `/accounts/{account_id}/urlscanner/scan`

Search scans by date and webpages' requests, including full URL (after redirects), hostname, and path. <br/> A successful scan will appear in search results a few minutes after finishing but may take much longer if the system in under load. By default, only successfully completed scans will appear in search results, unless searching by `scanId`. Please take into account that older scans may be removed from the search index at an unspecified time.

### Responses

#### 200 Search results

> Data is at `body["result"]`

```json
{
  "tasks": [
    {
      "country": "*string*",
      "success": "*boolean*",
      "time": "*string*",
      "url": "*string*",
      "uuid": "*string*",
      "visibility": "*string*"
    }
  ]
}
```

#### 400 Invalid params.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get URL scan

**GET** `/accounts/{account_id}/urlscanner/scan/{scan_id}`

Get URL scan by uuid

### Responses

#### 200 Scan has finished. It may or may not have been successful.

> Data is at `body["result"]`

```json
{
  "scan": {
    "asns": {
      "asn": {
        "asn": "*string*",
        "description": "*string*",
        "location_alpha2": "*string*",
        "name": "*string*",
        "org_name": "*string*"
      }
    },
    "certificates": [
      {
        "issuer": "*string*",
        "subjectName": "*string*",
        "validFrom": "*number*",
        "validTo": "*number*"
      }
    ],
    "domains": {
      "example.com": {
        "categories": {
          "content": [
            null
          ],
          "inherited": {
            "content": null,
            "from": null,
            "risks": null
          },
          "risks": [
            null
          ]
        },
        "dns": [
          {
            "address": null,
            "dnssec_valid": null,
            "name": null,
            "type": null
          }
        ],
        "name": "*string*",
        "rank": {
          "bucket": "*string*",
          "name": "*string*",
          "rank": "*integer*"
        },
        "type": "*string*"
      }
    },
    "geo": {
      "continents": [
        "*string*"
      ],
      "locations": [
        "*string*"
      ]
    },
    "ips": {
      "ip": {
        "asn": "*string*",
        "asnDescription": "*string*",
        "asnLocationAlpha2": "*string*",
        "asnName": "*string*",
        "asnOrgName": "*string*",
        "continent": "*string*",
        "geonameId": "*string*",
        "ip": "*string*",
        "ipVersion": "*string*",
        "latitude": "*string*",
        "locationAlpha2": "*string*",
        "locationName": "*string*",
        "longitude": "*string*",
        "subdivision1Name": "*string*",
        "subdivision2Name": "*string*"
      }
    },
    "links": {
      "link": {
        "href": "*string*",
        "text": "*string*"
      }
    },
    "meta": {
      "processors": {
        "categories": {
          "content": [
            null
          ],
          "risks": [
            null
          ]
        },
        "phishing": [
          "*string*"
        ],
        "rank": {
          "bucket": "*string*",
          "name": "*string*",
          "rank": "*integer*"
        },
        "tech": [
          {
            "categories": null,
            "confidence": null,
            "description": null,
            "evidence": null,
            "icon": null,
            "name": null,
            "slug": null,
            "website": null
          }
        ]
      }
    },
    "page": {
      "asn": "*string*",
      "asnLocationAlpha2": "*string*",
      "asnname": "*string*",
      "console": [
        {
          "category": "*string*",
          "text": "*string*",
          "type": "*string*",
          "url": "*string*"
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
      "country": "*string*",
      "countryLocationAlpha2": "*string*",
      "domain": "*string*",
      "headers": [
        {
          "name": "*string*",
          "value": "*string*"
        }
      ],
      "ip": "*string*",
      "js": {
        "variables": [
          {
            "name": null,
            "type": null
          }
        ]
      },
      "securityViolations": [
        {
          "category": "*string*",
          "text": "*string*",
          "url": "*string*"
        }
      ],
      "status": "*number*",
      "subdivision1Name": "*string*",
      "subdivision2name": "*string*",
      "url": "*string*"
    },
    "performance": [
      {
        "connectEnd": "*number*",
        "connectStart": "*number*",
        "decodedBodySize": "*number*",
        "domComplete": "*number*",
        "domContentLoadedEventEnd": "*number*",
        "domContentLoadedEventStart": "*number*",
        "domInteractive": "*number*",
        "domainLookupEnd": "*number*",
        "domainLookupStart": "*number*",
        "duration": "*number*",
        "encodedBodySize": "*number*",
        "entryType": "*string*",
        "fetchStart": "*number*",
        "initiatorType": "*string*",
        "loadEventEnd": "*number*",
        "loadEventStart": "*number*",
        "name": "*string*",
        "nextHopProtocol": "*string*",
        "redirectCount": "*number*",
        "redirectEnd": "*number*",
        "redirectStart": "*number*",
        "requestStart": "*number*",
        "responseEnd": "*number*",
        "responseStart": "*number*",
        "secureConnectionStart": "*number*",
        "startTime": "*number*",
        "transferSize": "*number*",
        "type": "*string*",
        "unloadEventEnd": "*number*",
        "unloadEventStart": "*number*",
        "workerStart": "*number*"
      }
    ],
    "task": {
      "clientLocation": "*string*",
      "clientType": "*string*",
      "effectiveUrl": "*string*",
      "errors": [
        {
          "message": "*string*"
        }
      ],
      "scannedFrom": {
        "colo": "*string*"
      },
      "status": "*string*",
      "success": "*boolean*",
      "time": "*string*",
      "timeEnd": "*string*",
      "url": "*string*",
      "uuid": "*string*",
      "visibility": "*string*"
    },
    "verdicts": {
      "overall": {
        "categories": [
          {
            "id": null,
            "name": null,
            "super_category_id": null
          }
        ],
        "malicious": "*boolean*",
        "phishing": [
          "*string*"
        ]
      }
    }
  }
}
```

#### 202 Scan is in progress. Check current status in `result.scan.task.status`. Possible statuses: `Queued`,`InProgress`,`InPostProcessing`,`Finished`.

> Data is at `body["result"]`

```json
{
  "scan": {
    "task": {
      "effectiveUrl": "*string*",
      "errors": [
        {
          "message": "*string*"
        }
      ],
      "location": "*string*",
      "region": "*string*",
      "status": "*string*",
      "success": "*boolean*",
      "time": "*string*",
      "url": "*string*",
      "uuid": "*string*",
      "visibility": "*string*"
    }
  }
}
```

#### 400 Invalid params.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Scan not found.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get URL scan's HAR

**GET** `/accounts/{account_id}/urlscanner/scan/{scan_id}/har`

Get a URL scan's HAR file. See HAR spec at http://www.softwareishard.com/blog/har-12-spec/.

### Responses

#### 200 Returns the scan's har.

> Data is at `body["result"]`

```json
{
  "har": {
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
            "bodySize": null,
            "headers": null,
            "headersSize": null,
            "httpVersion": null,
            "method": null,
            "url": null
          },
          "response": {
            "_transferSize": null,
            "bodySize": null,
            "content": null,
            "headers": null,
            "headersSize": null,
            "httpVersion": null,
            "redirectURL": null,
            "status": null,
            "statusText": null
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
            "onContentLoad": null,
            "onLoad": null
          },
          "startedDateTime": "*string*",
          "title": "*string*"
        }
      ],
      "version": "*string*"
    }
  }
}
```

#### 202 Scan is in progress. Check current status in `result.scan.task.status`. Possible statuses: `Queued`,`InProgress`,`InPostProcessing`,`Finished`.

> Data is at `body["result"]`

```json
{
  "scan": {
    "task": {
      "effectiveUrl": "*string*",
      "errors": [
        {
          "message": "*string*"
        }
      ],
      "location": "*string*",
      "region": "*string*",
      "status": "*string*",
      "success": "*boolean*",
      "time": "*string*",
      "url": "*string*",
      "uuid": "*string*",
      "visibility": "*string*"
    }
  }
}
```

#### 400 Invalid params.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Scan not found.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get screenshot

**GET** `/accounts/{account_id}/urlscanner/scan/{scan_id}/screenshot`

Get scan's screenshot by resolution (desktop/mobile/tablet).

### Responses

#### 200 Returns the scan's requested screenshot.

> Data is at `body["result"]`

```json

```

#### 202 Scan is in progress. Check current status in `result.scan.task.status`. Possible statuses: `Queued`,`InProgress`,`InPostProcessing`,`Finished`.

> Data is at `body["result"]`

```json
{
  "scan": {
    "task": {
      "effectiveUrl": "*string*",
      "errors": [
        {
          "message": "*string*"
        }
      ],
      "location": "*string*",
      "region": "*string*",
      "status": "*string*",
      "success": "*boolean*",
      "time": "*string*",
      "url": "*string*",
      "uuid": "*string*",
      "visibility": "*string*"
    }
  }
}
```

#### 400 Invalid params.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Scan not found.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


