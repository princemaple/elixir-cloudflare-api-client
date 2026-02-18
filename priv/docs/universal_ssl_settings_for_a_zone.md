# Universal SSL Settings for a Zone

## Edit Universal SSL Settings

**PATCH** `/zones/{zone_id}/ssl/universal/settings`

Patch Universal SSL Settings for a Zone.

### Responses

#### 200 Edit Universal SSL Settings response

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Edit Universal SSL Settings response failure

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



## Universal SSL Settings Details

**GET** `/zones/{zone_id}/ssl/universal/settings`

Get Universal SSL Settings for a Zone.

### Responses

#### 200 Universal SSL Settings Details response

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Universal SSL Settings Details response failure

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


