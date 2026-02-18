# Indicators

## Create a new indicator type

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicatorTypes/create`

Creates a new indicator type and initializes its dedicated Durable Object

### Responses

#### 200 Indicator type created successfully

> Data is at `body["result"]`

```json
{
  "durableObjectId": "*string*",
  "indicatorType": "*string*",
  "message": "*string*"
}
```

#### 400 Bad Request

```json
{
  "content": {
    "application/json": {
      "schema": {
        "errors": [
          {
            "message": null
          }
        ],
        "result": {},
        "success": "*boolean*"
      }
    }
  },
  "description": "*string*"
}
```

#### 500 Internal Server Error

```json
{
  "content": {
    "application/json": {
      "schema": {
        "errors": [
          {
            "message": null
          }
        ],
        "result": {},
        "success": "*boolean*"
      }
    }
  },
  "description": "*string*"
}
```


