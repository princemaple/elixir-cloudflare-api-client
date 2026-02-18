# Radar Traffic Anomalies

## Get latest Internet traffic anomalies

**GET** `/radar/traffic_anomalies`

Retrieves the latest Internet traffic anomalies, which are signals that might indicate an outage. These alerts are automatically detected by Radar and manually verified by our team.

### Responses

#### 200 List of Internet traffic anomalies.

> Data is at `body["result"]`

```json
{
  "trafficAnomalies": [
    {
      "asnDetails": {
        "asn": "*string*",
        "locations": {
          "code": "*string*",
          "name": "*string*"
        },
        "name": "*string*"
      },
      "endDate": "*string*",
      "locationDetails": {
        "code": "*string*",
        "name": "*string*"
      },
      "originDetails": {
        "name": "*string*",
        "origin": "*string*"
      },
      "startDate": "*string*",
      "status": "*string*",
      "type": "*string*",
      "uuid": "*string*",
      "visibleInDataSources": [
        "*string*"
      ]
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



## Get top locations by total traffic anomalies

**GET** `/radar/traffic_anomalies/locations`

Retrieves the sum of Internet traffic anomalies, grouped by location. These anomalies are signals that might indicate an outage, automatically detected by Radar and manually verified by our team.

### Responses

#### 200 List of locations with number of traffic anomalies.

> Data is at `body["result"]`

```json
{
  "trafficAnomalies": [
    {
      "clientCountryAlpha2": "*string*",
      "clientCountryName": "*string*",
      "value": "*string*"
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


