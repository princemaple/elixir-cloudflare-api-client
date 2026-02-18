# Load Balancer Regions

## List Regions

**GET** `/accounts/{account_id}/load_balancers/regions`

List all region mappings.

### Responses

#### 200 List Regions response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX List Regions response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Region

**GET** `/accounts/{account_id}/load_balancers/regions/{region_id}`

Get a single region mapping.

### Responses

#### 200 Get Region response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get Region response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


