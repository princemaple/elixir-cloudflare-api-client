# Calls TURN Keys

## Create a new TURN key

**POST** `/accounts/{account_id}/calls/turn_keys`

Creates a new Cloudflare Calls TURN key.

### Responses

#### 201 Created a new TURN key

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "key": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```



## List TURN Keys

**GET** `/accounts/{account_id}/calls/turn_keys`

Lists all TURN keys in the Cloudflare account

### Responses

#### 200 List TURN key response

> Data is at `body["result"]`

```json
[
  {
    "created": "*string*",
    "modified": "*string*",
    "name": "*string*",
    "uid": "*string*"
  }
]
```

#### 4XX List TURN key response failure

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



## Edit TURN key details

**PUT** `/accounts/{account_id}/calls/turn_keys/{key_id}`

Edit details for a single TURN key.

### Responses

#### 200 Edit TURN key details response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```

#### 4XX Edit TURN key details response failure

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



## Retrieve TURN key details

**GET** `/accounts/{account_id}/calls/turn_keys/{key_id}`

Fetches details for a single TURN key.

### Responses

#### 200 Retrieve TURN key details response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```

#### 4XX Retrieve TURN key details failure

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



## Delete TURN key

**DELETE** `/accounts/{account_id}/calls/turn_keys/{key_id}`

Deletes a TURN key from Cloudflare Calls

### Responses

#### 200 Delete TURN key response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```

#### 4XX Delete TURN key response failure

```json

```


