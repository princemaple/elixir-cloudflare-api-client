# Available Page Rules settings

## List available Page Rules settings

**GET** `/zones/{zone_id}/pagerules/settings`

Returns a list of settings (and their details) that Page Rules can apply to matching requests.

### Responses

#### 200 List available Page Rules settings response

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX List available Page Rules settings response failure

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


