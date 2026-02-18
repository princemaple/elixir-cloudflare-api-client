# Radar Autonomous Systems

## List autonomous systems

**GET** `/radar/entities/asns`

Retrieves a list of autonomous systems.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asns": [
    {
      "aka": "*string*",
      "asn": "*integer*",
      "country": "*string*",
      "countryName": "*string*",
      "name": "*string*",
      "orgName": "*string*",
      "website": "*string*"
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



## Get AS details by IP address

**GET** `/radar/entities/asns/ip`

Retrieves the requested autonomous system information based on IP address. Population estimates come from APNIC (refer to https://labs.apnic.net/?p=526).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asn": {
    "aka": "*string*",
    "asn": "*integer*",
    "country": "*string*",
    "countryName": "*string*",
    "estimatedUsers": {
      "estimatedUsers": "*integer*",
      "locations": [
        {
          "estimatedUsers": "*integer*",
          "locationAlpha2": "*string*",
          "locationName": "*string*"
        }
      ]
    },
    "name": "*string*",
    "orgName": "*string*",
    "related": [
      {
        "aka": "*string*",
        "asn": "*integer*",
        "estimatedUsers": "*integer*",
        "name": "*string*"
      }
    ],
    "source": "*string*",
    "website": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```



## Get AS details by ASN

**GET** `/radar/entities/asns/{asn}`

Retrieves the requested autonomous system information. (A confidence level below `5` indicates a low level of confidence in the traffic data - normally this happens because Cloudflare has a small amount of traffic from/to this AS). Population estimates come from APNIC (refer to https://labs.apnic.net/?p=526).

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "asn": {
    "aka": "*string*",
    "asn": "*integer*",
    "confidenceLevel": "*integer*",
    "country": "*string*",
    "countryName": "*string*",
    "estimatedUsers": {
      "estimatedUsers": "*integer*",
      "locations": [
        {
          "estimatedUsers": "*integer*",
          "locationAlpha2": "*string*",
          "locationName": "*string*"
        }
      ]
    },
    "name": "*string*",
    "orgName": "*string*",
    "related": [
      {
        "aka": "*string*",
        "asn": "*integer*",
        "estimatedUsers": "*integer*",
        "name": "*string*"
      }
    ],
    "source": "*string*",
    "website": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```



## Get IRR AS-SETs that an AS is a member of

**GET** `/radar/entities/asns/{asn}/as_set`

Retrieves Internet Routing Registry AS-SETs that an AS is a member of.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "as_sets": [
    {
      "as_members_count": "*integer*",
      "as_set_members_count": "*integer*",
      "as_set_upstreams_count": "*integer*",
      "asn_cone_size": "*integer*",
      "hierarchical_asn": "*integer*",
      "inferred_asn": "*integer*",
      "irr_sources": [
        "*string*"
      ],
      "name": "*string*",
      "peeringdb_asn": "*integer*"
    }
  ],
  "paths": [
    [
      "*string*"
    ]
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



## Get AS-level relationships by ASN

**GET** `/radar/entities/asns/{asn}/rel`

Retrieves AS-level relationship for given networks.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "data_time": "*string*",
    "query_time": "*string*",
    "total_peers": "*integer*"
  },
  "rels": [
    {
      "asn1": "*integer*",
      "asn1_country": "*string*",
      "asn1_name": "*string*",
      "asn2": "*integer*",
      "asn2_country": "*string*",
      "asn2_name": "*string*",
      "rel": "*string*"
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


