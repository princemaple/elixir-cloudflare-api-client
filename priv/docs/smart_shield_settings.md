# Smart Shield Settings

## Patch Smart Shield Settings

**PATCH** `/zones/{zone_id}/smart_shield`

Set Smart Shield Settings.

### Responses

#### 200 Smart Shield Settings response.

> Data is at `body["result"]`

```json
{
  "smart_tiered_cache": {
    "editable": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "value": "*string*"
  }
}
```

#### 4XX Patch Smart Shield Settings response failure.

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

#### 500 Get Smart Shield Settings response failure.

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

#### 502 Smart Shield Settings response failure.

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



## Get Smart Shield Settings

**GET** `/zones/{zone_id}/smart_shield`

Retrieve Smart Shield Settings.

### Responses

#### 200 Smart Shield Settings response.

> Data is at `body["result"]`

```json
{
  "cache_reserve": null,
  "healthchecks_count": "*integer*",
  "regional_tiered_cache": {
    "editable": "*boolean*",
    "id": "*string*",
    "value": "*string*"
  },
  "smart_routing": {
    "editable": "*boolean*",
    "id": "*string*",
    "value": "*string*"
  },
  "smart_tiered_cache": {
    "editable": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "value": "*string*"
  }
}
```

#### 4XX Patch Smart Shield Settings response failure.

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

#### 500 Get Smart Shield Settings response failure.

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

#### 502 Get Smart Shield Settings response failure.

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


