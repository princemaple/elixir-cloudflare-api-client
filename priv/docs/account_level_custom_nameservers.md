# Account-Level Custom Nameservers

## Add Account Custom Nameserver

**POST** `/accounts/{account_id}/custom_ns`



### Responses

#### 200 Add Account Custom Nameserver response

> Data is at `body["result"]`

```json
{
  "dns_records": [
    {
      "type": "*string*",
      "value": "*string*"
    }
  ],
  "ns_name": "*string*",
  "ns_set": "*number*",
  "status": "*string*",
  "zone_tag": "*string*"
}
```

#### 4XX Add Account Custom Nameserver response failure

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



## List Account Custom Nameservers

**GET** `/accounts/{account_id}/custom_ns`

List an account's custom nameservers.

### Responses

#### 200 List Account Custom Nameservers response

> Data is at `body["result"]`

```json
[
  {
    "dns_records": [
      {
        "type": "*string*",
        "value": "*string*"
      }
    ],
    "ns_name": "*string*",
    "ns_set": "*number*",
    "status": "*string*",
    "zone_tag": "*string*"
  }
]
```

#### 4XX List Account Custom Nameservers response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Delete Account Custom Nameserver

**DELETE** `/accounts/{account_id}/custom_ns/{custom_ns_id}`



### Responses

#### 200 Delete Account Custom Nameserver response

> Data is at `body["result"]`

```json
[
  "*string*"
]
```

#### 4XX Delete Account Custom Nameserver response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```


