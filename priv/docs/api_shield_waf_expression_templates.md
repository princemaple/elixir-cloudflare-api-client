# API Shield WAF Expression Templates

## Generate fallthrough WAF expression template from a set of API hosts

**POST** `/zones/{zone_id}/api_gateway/expression-template/fallthrough`



### Responses

#### 200 Generate fallthrough WAF expression template response

> Data is at `body["result"]`

```json
{
  "expression": "*string*",
  "title": "*string*"
}
```

#### 4XX Generate fallthrough WAF expression template failure

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


