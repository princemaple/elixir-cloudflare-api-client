# DLP Predefined Entries

## Create predefined entry

**POST** `/accounts/{account_id}/dlp/entries/predefined`

Predefined entries can't be created, this will update an existing predefined entry.
This is needed for our generated terraform API.

### Responses

#### 200 Create predefined entry response.

> Data is at `body["result"]`

```json
{
  "confidence": {
    "ai_context_available": "*boolean*",
    "available": "*boolean*"
  },
  "enabled": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "profile_id": "*string*",
  "variant": null
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



## Delete predefined entry

**DELETE** `/accounts/{account_id}/dlp/entries/predefined/{entry_id}`

This is a no-op as predefined entires can't be deleted but is needed for our generated terraform API.

### Responses

#### 200 Delete predefined entry response.

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


