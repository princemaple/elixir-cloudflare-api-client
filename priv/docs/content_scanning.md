# Content Scanning

## Disable Content Scanning

**POST** `/zones/{zone_id}/content-upload-scan/disable`

Disable Content Scanning.

### Responses

#### 200 Disable Content Scanning response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Disable Content Scanning failure response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Enable Content Scanning

**POST** `/zones/{zone_id}/content-upload-scan/enable`

Enable Content Scanning.

### Responses

#### 200 Enable Content Scanning response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Enable Content Scanning failure response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Add Custom Scan Expressions

**POST** `/zones/{zone_id}/content-upload-scan/payloads`

Add custom scan expressions for Content Scanning.

### Responses

#### 200 Add custom scan expressions for Content Scanning.

> Data is at `body["result"]`

```json
[
  {
    "id": null,
    "payload": "*string*"
  }
]
```

#### 4XX List existing Content Scan custom scan expressions failure response.

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
  "result": {},
  "success": "*boolean*"
}
```



## List Existing Custom Scan Expressions

**GET** `/zones/{zone_id}/content-upload-scan/payloads`

Get a list of existing custom scan expressions for Content Scanning.

### Responses

#### 200 List existing Content Scan custom scan expressions response.

> Data is at `body["result"]`

```json
[
  {
    "id": null,
    "payload": "*string*"
  }
]
```

#### 4XX List existing Content Scan custom scan expressions failure response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Delete a Custom Scan Expression

**DELETE** `/zones/{zone_id}/content-upload-scan/payloads/{expression_id}`

Delete a Content Scan Custom Expression.

### Responses

#### 200 Delete Content Scan custom scan expressions response.

> Data is at `body["result"]`

```json
[
  {
    "id": null,
    "payload": "*string*"
  }
]
```

#### 4XX Delete Content Scan custom scan expressions failure response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Update Content Scanning Status

**PUT** `/zones/{zone_id}/content-upload-scan/settings`

Update the Content Scanning status.

### Responses

#### 200 Update Content Scanning settings response.

> Data is at `body["result"]`

```json
{
  "modified": "*string*",
  "value": "*string*"
}
```

#### 4XX Update Content Scanning settings failure response.

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
  "result": {},
  "success": "*boolean*"
}
```



## Get Content Scanning Status

**GET** `/zones/{zone_id}/content-upload-scan/settings`

Retrieve the current status of Content Scanning.

### Responses

#### 200 Get Content Scanning status response.

> Data is at `body["result"]`

```json
{
  "modified": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Content Scanning status failure response.

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
  "result": {},
  "success": "*boolean*"
}
```


