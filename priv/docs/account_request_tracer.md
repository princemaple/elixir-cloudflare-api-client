# Account Request Tracer

## Request Trace

**POST** `/accounts/{account_id}/request-tracer/trace`



### Responses

#### 200 Request Trace response

> Data is at `body["result"]`

```json
{
  "status_code": "*integer*",
  "trace": [
    {
      "action": "*string*",
      "action_parameters": {},
      "description": "*string*",
      "expression": "*string*",
      "kind": "*string*",
      "matched": "*boolean*",
      "name": "*string*",
      "step_name": "*string*",
      "trace": [
        null
      ],
      "type": "*string*"
    }
  ]
}
```

#### 4XX Request Trace response failure

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


