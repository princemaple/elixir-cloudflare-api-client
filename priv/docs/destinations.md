# Destinations

## Create Destination

**POST** `/destinations`

Create a new Workers Observability Telemetry Destination.

### Responses

#### 201 Resource created

> Data is at `body["result"]`

```json
{
  "configuration": {
    "destination_conf": "*string*",
    "logpushDataset": null,
    "logpushJob": "*number*",
    "type": "*string*",
    "url": "*string*"
  },
  "enabled": "*boolean*",
  "name": "*string*",
  "scripts": [
    "*string*"
  ],
  "slug": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal error

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get Destinations

**GET** `/destinations`

List your Workers Observability Telemetry Destinations.

### Responses

#### 200 Successful request

> Data is at `body["result"]`

```json
[
  {
    "configuration": {
      "destination_conf": "*string*",
      "headers": {},
      "jobStatus": {
        "error_message": "*string*",
        "last_complete": "*string*",
        "last_error": "*string*"
      },
      "logpushDataset": null,
      "type": "*string*",
      "url": "*string*"
    },
    "enabled": "*boolean*",
    "name": "*string*",
    "scripts": [
      "*string*"
    ],
    "slug": "*string*"
  }
]
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not found

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal error

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Update Destination

**PATCH** `/destinations/{slug}`

Update an existing Workers Observability Telemetry Destination.

### Responses

#### 200 Successful request

> Data is at `body["result"]`

```json
{
  "configuration": {
    "destination_conf": "*string*",
    "logpushDataset": null,
    "logpushJob": "*number*",
    "type": "*string*",
    "url": "*string*"
  },
  "enabled": "*boolean*",
  "name": "*string*",
  "scripts": [
    "*string*"
  ],
  "slug": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not found

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal error

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Delete Destination

**DELETE** `/destinations/{slug}`

Delete a Workers Observability Telemetry Destination.

### Responses

#### 200 Successful request

> Data is at `body["result"]`

```json
{
  "configuration": {
    "destination_conf": "*string*",
    "logpushDataset": null,
    "logpushJob": "*number*",
    "type": "*string*",
    "url": "*string*"
  },
  "enabled": "*boolean*",
  "name": "*string*",
  "scripts": [
    "*string*"
  ],
  "slug": "*string*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not found

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal error

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


