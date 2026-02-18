# Radar Datasets

## List datasets

**GET** `/radar/datasets`

Retrieves a list of datasets.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "datasets": [
    {
      "description": "*string*",
      "id": "*integer*",
      "meta": {},
      "tags": [
        "*string*"
      ],
      "title": "*string*",
      "type": "*string*"
    }
  ]
}
```

#### 400 Bad request.

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



## Get dataset download URL

**POST** `/radar/datasets/download`

Retrieves an URL to download a single dataset.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "dataset": {
    "url": "*string*"
  }
}
```

#### 400 Bad request.

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



## Get dataset CSV stream

**GET** `/radar/datasets/{alias}`

Retrieves the CSV content of a given dataset by alias or ID. When getting the content by alias the latest dataset is returned, optionally filtered by the latest available at a given date.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json

```

#### 400 Bad request.

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


