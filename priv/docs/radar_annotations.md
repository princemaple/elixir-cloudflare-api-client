# Radar Annotations

## Get latest annotations

**GET** `/radar/annotations`

Retrieves the latest annotations.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "annotations": [
    {
      "asns": [
        "*integer*"
      ],
      "asnsDetails": [
        {
          "asn": "*string*",
          "locations": {
            "code": null,
            "name": null
          },
          "name": "*string*"
        }
      ],
      "dataSource": "*string*",
      "description": "*string*",
      "endDate": "*string*",
      "eventType": "*string*",
      "id": "*string*",
      "linkedUrl": "*string*",
      "locations": [
        "*string*"
      ],
      "locationsDetails": [
        {
          "code": "*string*",
          "name": "*string*"
        }
      ],
      "origins": [
        "*string*"
      ],
      "originsDetails": [
        {
          "name": "*string*",
          "origin": "*string*"
        }
      ],
      "outage": {
        "outageCause": "*string*",
        "outageType": "*string*"
      },
      "scope": "*string*",
      "startDate": "*string*"
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



## Get latest Internet outages and anomalies

**GET** `/radar/annotations/outages`

Retrieves the latest Internet outages and anomalies.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "annotations": [
    {
      "asns": [
        "*integer*"
      ],
      "asnsDetails": [
        {
          "asn": "*string*",
          "locations": {
            "code": null,
            "name": null
          },
          "name": "*string*"
        }
      ],
      "dataSource": "*string*",
      "description": "*string*",
      "endDate": "*string*",
      "eventType": "*string*",
      "id": "*string*",
      "linkedUrl": "*string*",
      "locations": [
        "*string*"
      ],
      "locationsDetails": [
        {
          "code": "*string*",
          "name": "*string*"
        }
      ],
      "origins": [
        "*string*"
      ],
      "originsDetails": [
        {
          "name": "*string*",
          "origin": "*string*"
        }
      ],
      "outage": {
        "outageCause": "*string*",
        "outageType": "*string*"
      },
      "scope": "*string*",
      "startDate": "*string*"
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



## Get the number of outages by location

**GET** `/radar/annotations/outages/locations`

Retrieves the number of outages by location.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "annotations": [
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


