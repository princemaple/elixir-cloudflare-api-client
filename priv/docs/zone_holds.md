# Zone Holds

## Create Zone Hold

**POST** `/zones/{zone_id}/hold`

Enforce a zone hold on the zone, blocking the creation and activation of zones with this zone's hostname.

### Responses

#### 200 Successful Response

> Data is at `body["result"]`

```json
{
  "hold": "*boolean*",
  "hold_after": "*string*",
  "include_subdomains": "*string*"
}
```

#### 4XX Client Error

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



## Update Zone Hold

**PATCH** `/zones/{zone_id}/hold`

Update the `hold_after` and/or `include_subdomains` values on an existing zone hold.
The hold is enabled if the `hold_after` date-time value is in the past.

### Responses

#### 200 Successful Response

> Data is at `body["result"]`

```json
{
  "hold": "*boolean*",
  "hold_after": "*string*",
  "include_subdomains": "*string*"
}
```

#### 4XX Client Error

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



## Get Zone Hold

**GET** `/zones/{zone_id}/hold`

Retrieve whether the zone is subject to a zone hold, and metadata about the hold.

### Responses

#### 200 Successful Response

> Data is at `body["result"]`

```json
{
  "hold": "*boolean*",
  "hold_after": "*string*",
  "include_subdomains": "*string*"
}
```

#### 4XX Client Error

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



## Remove Zone Hold

**DELETE** `/zones/{zone_id}/hold`

Stop enforcement of a zone hold on the zone, permanently or temporarily, allowing the
creation and activation of zones with this zone's hostname.

### Responses

#### 200 Successful Response

> Data is at `body["result"]`

```json
{
  "hold": "*boolean*",
  "hold_after": "*string*",
  "include_subdomains": "*string*"
}
```

#### 4XX Client Error

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


