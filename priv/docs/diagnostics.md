# Diagnostics

## Traceroute

**POST** `/accounts/{account_id}/diagnostics/traceroute`

Run traceroutes from Cloudflare colos.

### Responses

#### 200 Traceroute response.

> Data is at `body["result"]`

```json
[
  {
    "colos": [
      {
        "colo": null,
        "error": null,
        "hops": null,
        "target_summary": null,
        "traceroute_time_ms": null
      }
    ],
    "target": "*string*"
  }
]
```

#### 4XX Traceroute response failure.

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


