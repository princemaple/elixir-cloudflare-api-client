# Automatic SSL/TLS

## Patch Automatic SSL/TLS Enrollment status for given zone

**PATCH** `/zones/{zone_id}/settings/ssl_automatic_mode`

The automatic system is enabled when this endpoint is hit with value in the request body is set to "auto", and disabled when the request body value is set to "custom".

### Responses

#### 200 Patch Automatic SSL/TLS Enrollment status response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "next_scheduled_scan": "*string*",
  "value": "*string*"
}
```

#### 4XX Patch Automatic SSL/TLS Enrollment status failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {
    "editable": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "next_scheduled_scan": "*string*",
    "value": "*string*"
  },
  "success": "*boolean*"
}
```



## Get Automatic SSL/TLS enrollment status for the given zone

**GET** `/zones/{zone_id}/settings/ssl_automatic_mode`

If the system is enabled, the response will include next_scheduled_scan, representing the next time this zone will be scanned and the zone's ssl/tls encryption mode is potentially upgraded by the system. If the system is disabled, next_scheduled_scan will not be present in the response body.

### Responses

#### 200 Get Automatic SSL/TLS Enrollment status response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "next_scheduled_scan": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Automatic SSL/TLS Enrollment status failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {
    "editable": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "next_scheduled_scan": "*string*",
    "value": "*string*"
  },
  "success": "*boolean*"
}
```


