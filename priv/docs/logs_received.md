# Logs Received

## Update log retention flag

**POST** `/zones/{zone_id}/logs/control/retention/flag`

Updates log retention flag for Logpull API.

### Responses

#### 200 Update log retention flag response

> Data is at `body["result"]`

```json
{
  "flag": "*boolean*"
}
```

#### 4XX Update log retention flag response failure

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



## Get log retention flag

**GET** `/zones/{zone_id}/logs/control/retention/flag`

Gets log retention flag for Logpull API.

### Responses

#### 200 Get log retention flag response

> Data is at `body["result"]`

```json
{
  "flag": "*boolean*"
}
```

#### 4XX Get log retention flag response failure

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



## Get logs RayIDs

**GET** `/zones/{zone_id}/logs/rayids/{ray_id}`

The `/rayids` api route allows lookups by specific rayid. The rayids route will return zero, one, or more records (ray ids are not unique).

### Responses

#### 200 Get logs RayIDs response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get logs RayIDs response failure

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



## Get logs received

**GET** `/zones/{zone_id}/logs/received`

The `/received` api route allows customers to retrieve their edge HTTP logs. The basic access pattern is "give me all the logs for zone Z for minute M", where the minute M refers to the time records were received at Cloudflare's central data center. `start` is inclusive, and `end` is exclusive. Because of that, to get all data, at minutely cadence, starting at 10AM, the proper values are: `start=2018-05-20T10:00:00Z&end=2018-05-20T10:01:00Z`, then `start=2018-05-20T10:01:00Z&end=2018-05-20T10:02:00Z` and so on; the overlap will be handled properly.

### Responses

#### 200 Get logs received response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get logs received response failure

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



## List fields

**GET** `/zones/{zone_id}/logs/received/fields`

Lists all fields available. The response is json object with key-value pairs, where keys are field names, and values are descriptions.

### Responses

#### 200 List fields response

> Data is at `body["result"]`

```json
{
  "key": "*string*"
}
```

#### 4XX List fields response failure

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


