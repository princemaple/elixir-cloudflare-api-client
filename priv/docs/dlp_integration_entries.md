# DLP Integration Entries

## Create integration entry

**POST** `/accounts/{account_id}/dlp/entries/integration`

Integration entries can't be created, this will update an existing integration entry.
This is needed for our generated terraform API.

### Responses

#### 200 Create integration entry response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "profile_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create entry failure response.

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



## Update integration entry

**PUT** `/accounts/{account_id}/dlp/entries/integration/{entry_id}`

Updates a DLP entry.

### Responses

#### 200 Update integration entry response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "profile_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update entry failure response.

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



## Delete integration entry

**DELETE** `/accounts/{account_id}/dlp/entries/integration/{entry_id}`

This is a no-op as integration entires can't be deleted but is needed for our generated terraform API.

### Responses

#### 200 Delete integration entry response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete entry failure response.

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


