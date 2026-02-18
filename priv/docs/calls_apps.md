# Calls Apps

## Create a new app

**POST** `/accounts/{account_id}/calls/apps`

Creates a new Cloudflare calls app. An app is an unique enviroment where each Session can access all Tracks within the app.

### Responses

#### 201 Created a new app

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "secret": "*string*",
  "uid": "*string*"
}
```



## List apps

**GET** `/accounts/{account_id}/calls/apps`

Lists all apps in the Cloudflare account

### Responses

#### 200 List apps response

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

#### 4XX List apps response failure

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



## Edit app details

**PUT** `/accounts/{account_id}/calls/apps/{app_id}`

Edit details for a single app.

### Responses

#### 200 Edit app details response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```

#### 4XX Edit app details response failure

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



## Retrieve app details

**GET** `/accounts/{account_id}/calls/apps/{app_id}`

Fetches details for a single Calls app.

### Responses

#### 200 Retrieve app details response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```

#### 4XX Retrieve app details response failure

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



## Delete app

**DELETE** `/accounts/{account_id}/calls/apps/{app_id}`

Deletes an app from Cloudflare Calls

### Responses

#### 200 Delete app response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "uid": "*string*"
}
```

#### 4XX Delete app response failure

```json

```


