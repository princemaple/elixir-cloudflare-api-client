# Radar Geolocations

## List Geolocations

**GET** `/radar/geolocations`

Retrieves a list of geolocations.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "geolocations": [
    {
      "geoId": "*string*",
      "latitude": "*string*",
      "longitude": "*string*",
      "name": "*string*",
      "parent": {
        "geoId": "*string*",
        "latitude": "*string*",
        "longitude": "*string*",
        "name": "*string*",
        "parent": {
          "geoId": "*string*",
          "latitude": "*string*",
          "longitude": "*string*",
          "name": "*string*",
          "type": "*string*"
        },
        "type": "*string*"
      },
      "type": "*string*"
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



## Get Geolocation details

**GET** `/radar/geolocations/{geo_id}`

Retrieves the requested Geolocation information.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "geolocation": {
    "geoId": "*string*",
    "latitude": "*string*",
    "longitude": "*string*",
    "name": "*string*",
    "parent": {
      "geoId": "*string*",
      "latitude": "*string*",
      "longitude": "*string*",
      "name": "*string*",
      "parent": {
        "geoId": "*string*",
        "latitude": "*string*",
        "longitude": "*string*",
        "name": "*string*",
        "type": "*string*"
      },
      "type": "*string*"
    },
    "type": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


