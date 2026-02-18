# Leaked Credential Checks

## Set Leaked Credential Checks Status

**POST** `/zones/{zone_id}/leaked-credential-checks`

Updates the current status of Leaked Credential Checks.

### Responses

#### 200 Set Leaked Credential Checks status response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Set Leaked Credential Checks status failure response.

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



## Get Leaked Credential Checks Status

**GET** `/zones/{zone_id}/leaked-credential-checks`

Retrieves the current status of Leaked Credential Checks.

### Responses

#### 200 Get Leaked Credential Checks status response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Get Leaked Credential Checks status failure response.

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



## Create Leaked Credential Checks Custom Detection

**POST** `/zones/{zone_id}/leaked-credential-checks/detections`

Create user-defined detection pattern for Leaked Credential Checks.

### Responses

#### 200 Create Leaked Credential Checks custom detection response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "password": "*string*",
  "username": "*string*"
}
```

#### 4XX Create Leaked Credential Checks custom detection failure response.

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



## List Leaked Credential Checks Custom Detections

**GET** `/zones/{zone_id}/leaked-credential-checks/detections`

List user-defined detection patterns for Leaked Credential Checks.

### Responses

#### 200 List Leaked Credential Checks custom detections response.

> Data is at `body["result"]`

```json
[
  {
    "id": null,
    "password": "*string*",
    "username": "*string*"
  }
]
```

#### 4XX List Leaked Credential Checks custom detections failure response.

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



## Update Leaked Credential Checks Custom Detection

**PUT** `/zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`

Update user-defined detection pattern for Leaked Credential Checks.

### Responses

#### 200 Update Leaked Credential Checks custom detection response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "password": "*string*",
  "username": "*string*"
}
```

#### 4XX Update Leaked Credential Checks custom detection failure response.

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



## Get Leaked Credential Checks Custom Detection

**GET** `/zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`

Get user-defined detection pattern for Leaked Credential Checks.

### Responses

#### 200 Get Leaked Credential Checks custom detection response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "password": "*string*",
  "username": "*string*"
}
```

#### 4XX Update Leaked Credential Checks custom detection failure response.

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



## Delete Leaked Credential Checks Custom Detection

**DELETE** `/zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`

Remove user-defined detection pattern for Leaked Credential Checks.

### Responses

#### 200 Delete Leaked Credential Checks custom detection response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete Leaked Credential Checks custom detection failure response.

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


