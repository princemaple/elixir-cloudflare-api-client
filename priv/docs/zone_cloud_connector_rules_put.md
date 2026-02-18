# Zone Cloud Connector Rules PUT

## Put Rules

**PUT** `/zones/{zone_id}/cloud_connector/rules`



### Responses

#### 200 Cloud Connector rules response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "enabled": "*boolean*",
    "expression": "*string*",
    "id": "*string*",
    "parameters": {
      "host": "*string*"
    },
    "provider": "*string*"
  }
]
```

#### 4XX Cloud Connector response failure

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

#### 5XX Cloud Connector response failure

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


