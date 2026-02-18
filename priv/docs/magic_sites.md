# Magic Sites

## Create a new Site

**POST** `/accounts/{account_id}/magic/sites`

Creates a new Site

### Responses

#### 200 Create Site response

> Data is at `body["result"]`

```json
{
  "connector_id": "*string*",
  "description": "*string*",
  "ha_mode": "*boolean*",
  "id": "*string*",
  "location": {
    "lat": "*string*",
    "lon": "*string*"
  },
  "name": "*string*",
  "secondary_connector_id": "*string*"
}
```

#### 4XX Create Site response failure

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



## List Sites

**GET** `/accounts/{account_id}/magic/sites`

Lists Sites associated with an account. Use connectorid query param to return sites where connectorid matches either site.ConnectorID or site.SecondaryConnectorID.

### Responses

#### 200 List Sites response

> Data is at `body["result"]`

```json
[
  {
    "connector_id": "*string*",
    "description": "*string*",
    "ha_mode": "*boolean*",
    "id": "*string*",
    "location": {
      "lat": "*string*",
      "lon": "*string*"
    },
    "name": "*string*",
    "secondary_connector_id": "*string*"
  }
]
```

#### 4XX List Sites response failure

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



## Update Site

**PUT** `/accounts/{account_id}/magic/sites/{site_id}`

Update a specific Site.

### Responses

#### 200 Update Site response

> Data is at `body["result"]`

```json
{
  "connector_id": "*string*",
  "description": "*string*",
  "ha_mode": "*boolean*",
  "id": "*string*",
  "location": {
    "lat": "*string*",
    "lon": "*string*"
  },
  "name": "*string*",
  "secondary_connector_id": "*string*"
}
```

#### 4XX Update Site response failure

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



## Patch Site

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}`

Patch a specific Site.

### Responses

#### 200 Patch Site response

> Data is at `body["result"]`

```json
{
  "connector_id": "*string*",
  "description": "*string*",
  "ha_mode": "*boolean*",
  "id": "*string*",
  "location": {
    "lat": "*string*",
    "lon": "*string*"
  },
  "name": "*string*",
  "secondary_connector_id": "*string*"
}
```

#### 4XX Patch Site response failure

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



## Site Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}`

Get a specific Site.

### Responses

#### 200 Site Details response

> Data is at `body["result"]`

```json
{
  "connector_id": "*string*",
  "description": "*string*",
  "ha_mode": "*boolean*",
  "id": "*string*",
  "location": {
    "lat": "*string*",
    "lon": "*string*"
  },
  "name": "*string*",
  "secondary_connector_id": "*string*"
}
```

#### 4XX Site Details response failure

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



## Delete Site

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}`

Remove a specific Site.

### Responses

#### 200 Delete Site response

> Data is at `body["result"]`

```json
{
  "connector_id": "*string*",
  "description": "*string*",
  "ha_mode": "*boolean*",
  "id": "*string*",
  "location": {
    "lat": "*string*",
    "lon": "*string*"
  },
  "name": "*string*",
  "secondary_connector_id": "*string*"
}
```

#### 4XX Delete Site response failure

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


