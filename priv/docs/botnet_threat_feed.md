# Botnet Threat Feed

## Get daily report

**GET** `/accounts/{account_id}/botnet_feed/asn/{asn_id}/day_report`

Gets all the data the botnet tracking database has for a given ASN registered to user account for given date. If no date is given, it will return results for the previous day.

### Responses

#### 200 Get botnet feed report for day

> Data is at `body["result"]`

```json
{
  "cidr": "*string*",
  "date": "*string*",
  "offense_count": "*integer*"
}
```

#### 4XX Get botnet feed report for day response failure

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



## Get full report

**GET** `/accounts/{account_id}/botnet_feed/asn/{asn_id}/full_report`

Gets all the data the botnet threat feed tracking database has for a given ASN registered to user account.

### Responses

#### 200 Get full botnet feed report

> Data is at `body["result"]`

```json
{
  "cidr": "*string*",
  "date": "*string*",
  "offense_count": "*integer*"
}
```

#### 4XX Get full botnet feed report response failure

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



## Get list of ASNs

**GET** `/accounts/{account_id}/botnet_feed/configs/asn`

Gets a list of all ASNs registered for a user for the DDoS Botnet Feed API.

### Responses

#### 200 Get list of ASNs response

> Data is at `body["result"]`

```json
{
  "asn": "*integer*"
}
```

#### 4XX Get list of ASNs response failure

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



## Delete an ASN

**DELETE** `/accounts/{account_id}/botnet_feed/configs/asn/{asn_id}`

Delete an ASN from botnet threat feed for a given user.

### Responses

#### 200 Delete ASN response

> Data is at `body["result"]`

```json
{
  "asn": "*integer*"
}
```

#### 4XX Delete ASN response failure

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


