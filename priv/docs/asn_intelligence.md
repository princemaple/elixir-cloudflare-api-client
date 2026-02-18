# ASN Intelligence

## Get ASN Overview.

**GET** `/accounts/{account_id}/intel/asn/{asn}`

Gets an overview of the Autonomous System Number (ASN) and a list of subnets for it.

### Responses

#### 200 Get ASN Overview response.

> Data is at `body["result"]`

```json
"*integer*"
```

#### 4XX Get ASN Overview response failure.

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



## Get ASN Subnets

**GET** `/accounts/{account_id}/intel/asn/{asn}/subnets`

Get ASN Subnets.

### Responses

#### 200 Get ASN Subnets response.

> Data is at `body["result"]`

```json
{
  "asn": "*integer*",
  "count": "*number*",
  "ip_count_total": "*integer*",
  "page": "*number*",
  "per_page": "*number*",
  "subnets": [
    "*string*"
  ]
}
```

#### 4XX Get ASN Subnets response failure.

```json
{
  "asn": "*integer*",
  "count": "*number*",
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "ip_count_total": "*integer*",
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "page": "*number*",
  "per_page": "*number*",
  "result": {},
  "subnets": [
    "*string*"
  ],
  "success": "*boolean*"
}
```


