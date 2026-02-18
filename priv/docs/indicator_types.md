# Indicator Types

## Lists indicator types across multiple datasets

**GET** `/accounts/{account_id}/cloudforce-one/events/indicator-types`



### Responses

#### 200 Returns a list of indicator types.

> Data is at `body["result"]`

```json
{
  "items": {
    "type": "*string*"
  },
  "type": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Lists all indicator types

**GET** `/accounts/{account_id}/cloudforce-one/events/indicatorTypes`

This Method is deprecated. Please use /events/dataset/:dataset_id/indicatorTypes instead.

### Responses

#### 200 Returns a list of indicator types.

> Data is at `body["result"]`

```json
{
  "items": {
    "type": "*string*"
  },
  "type": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


