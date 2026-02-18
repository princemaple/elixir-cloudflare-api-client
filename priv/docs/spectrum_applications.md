# Spectrum Applications

## Create Spectrum application using a name for the origin

**POST** `/zones/{zone_id}/spectrum/apps`

Creates a new Spectrum application from a configuration using a name for the origin.

### Responses

#### 200 Create Spectrum application using a name for the origin response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create Spectrum application using a name for the origin response failure.

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



## List Spectrum applications

**GET** `/zones/{zone_id}/spectrum/apps`

Retrieves a list of currently existing Spectrum applications inside a zone.

### Responses

#### 200 List Spectrum applications response.

> Data is at `body["result"]`

```json
null
```

#### 4XX List Spectrum applications response failure.

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



## Update Spectrum application configuration using a name for the origin

**PUT** `/zones/{zone_id}/spectrum/apps/{app_id}`

Updates a previously existing application's configuration that uses a name for the origin.

### Responses

#### 200 Update Spectrum application configuration using a name for the origin response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update Spectrum application configuration using a name for the origin response failure.

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



## Get Spectrum application configuration

**GET** `/zones/{zone_id}/spectrum/apps/{app_id}`

Gets the application configuration of a specific application inside a zone.

### Responses

#### 200 Get Spectrum application configuration response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get Spectrum application configuration response failure.

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



## Delete Spectrum application

**DELETE** `/zones/{zone_id}/spectrum/apps/{app_id}`

Deletes a previously existing application.

### Responses

#### 200 Delete Spectrum application response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Spectrum application response failure.

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


