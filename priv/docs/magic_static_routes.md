# Magic Static Routes

## Update Many Routes

**PUT** `/accounts/{account_id}/magic/routes`

Update multiple Magic static routes. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes. Only fields for a route that need to be changed need be provided.

### Responses

#### 200 Update Many Routes response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update Many Routes response failure

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



## Create a Route

**POST** `/accounts/{account_id}/magic/routes`

Creates a new Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.

### Responses

#### 200 Create Routes response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "nexthop": "*string*",
  "prefix": "*string*",
  "priority": "*integer*",
  "scope": {
    "colo_names": [
      null
    ],
    "colo_regions": [
      null
    ]
  },
  "weight": "*integer*"
}
```

#### 4XX Create Routes response failure

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



## List Routes

**GET** `/accounts/{account_id}/magic/routes`

List all Magic static routes.

### Responses

#### 200 List Routes response

> Data is at `body["result"]`

```json
null
```

#### 4XX List Routes response failure

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



## Delete Many Routes

**DELETE** `/accounts/{account_id}/magic/routes`

Delete multiple Magic static routes.

### Responses

#### 200 Delete Many Routes response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete Many Routes response failure

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



## Update Route

**PUT** `/accounts/{account_id}/magic/routes/{route_id}`

Update a specific Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.

### Responses

#### 200 Update Route response

> Data is at `body["result"]`

```json
{
  "modified": "*boolean*",
  "modified_route": {
    "created_on": "*string*",
    "description": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "nexthop": "*string*",
    "prefix": "*string*",
    "priority": "*integer*",
    "scope": {
      "colo_names": null,
      "colo_regions": null
    },
    "weight": "*integer*"
  }
}
```

#### 4XX Update Route response failure

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



## Route Details

**GET** `/accounts/{account_id}/magic/routes/{route_id}`

Get a specific Magic static route.

### Responses

#### 200 Route Details response

> Data is at `body["result"]`

```json
{
  "route": {
    "created_on": "*string*",
    "description": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "nexthop": "*string*",
    "prefix": "*string*",
    "priority": "*integer*",
    "scope": {
      "colo_names": null,
      "colo_regions": null
    },
    "weight": "*integer*"
  }
}
```

#### 4XX Route Details response failure

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



## Delete Route

**DELETE** `/accounts/{account_id}/magic/routes/{route_id}`

Disable and remove a specific Magic static route.

### Responses

#### 200 Delete Route response

> Data is at `body["result"]`

```json
{
  "deleted": "*boolean*",
  "deleted_route": {
    "created_on": "*string*",
    "description": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "nexthop": "*string*",
    "prefix": "*string*",
    "priority": "*integer*",
    "scope": {
      "colo_names": null,
      "colo_regions": null
    },
    "weight": "*integer*"
  }
}
```

#### 4XX Delete Route response failure

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


