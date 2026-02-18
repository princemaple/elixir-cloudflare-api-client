# Email Routing destination addresses

## Create a destination address

**POST** `/accounts/{account_id}/email/routing/addresses`

Create a destination address to forward your emails to. Destination addresses need to be verified before they can be used.

### Responses

#### 200 Create a destination address response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "email": "*string*",
  "id": "*string*",
  "modified": "*string*",
  "tag": "*string*",
  "verified": "*string*"
}
```



## List destination addresses

**GET** `/accounts/{account_id}/email/routing/addresses`

Lists existing destination addresses.

### Responses

#### 200 List destination addresses response

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "email": "*string*",
    "id": "*string*",
    "modified": "*string*",
    "tag": "*string*",
    "verified": "*string*"
  }
]
```



## Get a destination address

**GET** `/accounts/{account_id}/email/routing/addresses/{destination_address_identifier}`

Gets information for a specific destination email already created.

### Responses

#### 200 Get a destination address response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "email": "*string*",
  "id": "*string*",
  "modified": "*string*",
  "tag": "*string*",
  "verified": "*string*"
}
```



## Delete destination address

**DELETE** `/accounts/{account_id}/email/routing/addresses/{destination_address_identifier}`

Deletes a specific destination address.

### Responses

#### 200 Delete destination address response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "email": "*string*",
  "id": "*string*",
  "modified": "*string*",
  "tag": "*string*",
  "verified": "*string*"
}
```


