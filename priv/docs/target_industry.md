# Target Industry

## Lists all target industries for a specific dataset

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/targetIndustries`



### Responses

#### 200 Returns a list of target industries for the dataset.

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



## Lists target industries across multiple datasets

**GET** `/accounts/{account_id}/cloudforce-one/events/targetIndustries`



### Responses

#### 200 Returns a list of target industries.

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



## Lists all target industries from industry map catalog

**GET** `/accounts/{account_id}/cloudforce-one/events/targetIndustries/catalog`



### Responses

#### 200 Returns all target industries from industry map catalog.

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


