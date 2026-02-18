# Slots

## Retrieve a list of all slots matching the specified parameters

**GET** `/accounts/{account_id}/cni/slots`



### Responses

#### 200 List of matching slots

> Data is at `body["result"]`

```json
{
  "items": [
    {
      "account": "*string*",
      "facility": {
        "address": null,
        "name": null
      },
      "id": "*string*",
      "occupied": "*boolean*",
      "site": "*string*",
      "speed": "*string*"
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



## Get information about the specified slot

**GET** `/accounts/{account_id}/cni/slots/{slot}`



### Responses

#### 200 Information about the specified slot

> Data is at `body["result"]`

```json
{
  "account": "*string*",
  "facility": {
    "address": [
      "*string*"
    ],
    "name": "*string*"
  },
  "id": "*string*",
  "occupied": "*boolean*",
  "site": "*string*",
  "speed": "*string*"
}
```

#### 400 Bad request

```json

```

#### 404 Slot not found

```json

```

#### 500 Internal server error

```json

```


