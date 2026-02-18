# Stream Webhook

## Create webhooks

**PUT** `/accounts/{account_id}/stream/webhook`

Creates a webhook notification.

### Responses

#### 200 Create webhooks response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Create webhooks response failure.

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



## View webhooks

**GET** `/accounts/{account_id}/stream/webhook`

Retrieves a list of webhooks.

### Responses

#### 200 View webhooks response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX View webhooks response failure.

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



## Delete webhooks

**DELETE** `/accounts/{account_id}/stream/webhook`

Deletes a webhook.

### Responses

#### 200 Delete webhooks response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Delete webhooks response failure.

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


