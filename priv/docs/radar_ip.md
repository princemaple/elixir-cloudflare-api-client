# Radar IP

## Get IP address details

**GET** `/radar/entities/ip`

Retrieves IP address information.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "ip": {
    "asn": "*string*",
    "asnLocation": "*string*",
    "asnName": "*string*",
    "asnOrgName": "*string*",
    "ip": "*string*",
    "ipVersion": "*string*",
    "location": "*string*",
    "locationName": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


