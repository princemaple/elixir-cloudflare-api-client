# Radar Locations

## List locations

**GET** `/radar/entities/locations`

Retrieves a list of locations.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "locations": [
    {
      "alpha2": "*string*",
      "latitude": "*string*",
      "longitude": "*string*",
      "name": "*string*"
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



## Get location details

**GET** `/radar/entities/locations/{location}`

Retrieves the requested location information. (A confidence level below `5` indicates a low level of confidence in the traffic data - normally this happens because Cloudflare has a small amount of traffic from/to this location).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "location": {
    "alpha2": "*string*",
    "confidenceLevel": "*integer*",
    "latitude": "*string*",
    "longitude": "*string*",
    "name": "*string*",
    "region": "*string*",
    "subregion": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


