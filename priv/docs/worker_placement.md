# Worker Placement

## List Placement Regions

**GET** `/accounts/{account_id}/workers/placement/regions`

Returns a list of available placement regions organized by cloud provider. These regions can be used to configure Smart Placement for Workers.

### Responses

#### 200 List Placement Regions response.

> Data is at `body["result"]`

```json
{
  "providers": [
    {
      "id": "*string*",
      "regions": [
        null
      ]
    }
  ]
}
```

#### 4XX List Placement Regions response failure.

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


