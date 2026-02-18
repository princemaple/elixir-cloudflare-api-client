# CNIs

## Create a new CNI object

**POST** `/accounts/{account_id}/cni/cnis`



### Responses

#### 200 CNI was successfully created

> Data is at `body["result"]`

```json
{
  "account": "*string*",
  "bgp": {
    "customer_asn": "*integer*",
    "extra_prefixes": [
      "*string*"
    ],
    "md5_key": "*string*"
  },
  "cust_ip": "*string*",
  "id": "*string*",
  "interconnect": "*string*",
  "magic": {
    "conduit_name": "*string*",
    "description": "*string*",
    "mtu": "*integer*"
  },
  "p2p_ip": "*string*"
}
```

#### 400 Bad request

```json

```

#### 409 Name Conflict

```json

```

#### 500 Internal server error

```json

```



## List existing CNI objects

**GET** `/accounts/{account_id}/cni/cnis`



### Responses

#### 200 List of matching CNI objects

> Data is at `body["result"]`

```json
{
  "items": [
    {
      "account": "*string*",
      "bgp": {
        "customer_asn": null,
        "extra_prefixes": null,
        "md5_key": null
      },
      "cust_ip": "*string*",
      "id": "*string*",
      "interconnect": "*string*",
      "magic": {
        "conduit_name": null,
        "description": null,
        "mtu": null
      },
      "p2p_ip": "*string*"
    }
  ],
  "next": "*integer*"
}
```

#### 400 Bad request

```json

```

#### 500 Internal server error

```json

```



## Modify stored information about a CNI object

**PUT** `/accounts/{account_id}/cni/cnis/{cni}`



### Responses

#### 200 CNI has been successfully modified

> Data is at `body["result"]`

```json
{
  "account": "*string*",
  "bgp": {
    "customer_asn": "*integer*",
    "extra_prefixes": [
      "*string*"
    ],
    "md5_key": "*string*"
  },
  "cust_ip": "*string*",
  "id": "*string*",
  "interconnect": "*string*",
  "magic": {
    "conduit_name": "*string*",
    "description": "*string*",
    "mtu": "*integer*"
  },
  "p2p_ip": "*string*"
}
```

#### 400 Bad request

```json

```

#### 404 CNI not found

```json

```

#### 500 Internal server error

```json

```



## Get information about a CNI object

**GET** `/accounts/{account_id}/cni/cnis/{cni}`



### Responses

#### 200 CNI's associated data

> Data is at `body["result"]`

```json
{
  "account": "*string*",
  "bgp": {
    "customer_asn": "*integer*",
    "extra_prefixes": [
      "*string*"
    ],
    "md5_key": "*string*"
  },
  "cust_ip": "*string*",
  "id": "*string*",
  "interconnect": "*string*",
  "magic": {
    "conduit_name": "*string*",
    "description": "*string*",
    "mtu": "*integer*"
  },
  "p2p_ip": "*string*"
}
```

#### 400 Bad request

```json

```

#### 404 CNI not found

```json

```

#### 500 Internal server error

```json

```



## Delete a specified CNI object

**DELETE** `/accounts/{account_id}/cni/cnis/{cni}`



### Responses

#### 200 CNI has been successfully deleted

> Data is at `body["result"]`

```json

```

#### 400 Bad request

```json

```

#### 404 CNI not found

```json

```

#### 500 Internal server error

```json

```


