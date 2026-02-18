# Dataset

## Lists all datasets in an account

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset`



### Responses

#### 200 Returns a list of dataset in an account.

> Data is at `body["result"]`

```json
[
  {
    "isPublic": "*boolean*",
    "name": "*string*",
    "uuid": "*string*"
  }
]
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



## Creates a dataset

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/create`



### Responses

#### 200 Returns dataset information.

> Data is at `body["result"]`

```json
{
  "isPublic": "*boolean*",
  "name": "*string*",
  "uuid": "*string*"
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



## Updates an existing dataset

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`



### Responses

#### 200 Returns dataset information.

> Data is at `body["result"]`

```json
{
  "isPublic": "*boolean*",
  "name": "*string*",
  "uuid": "*string*"
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



## Updates an existing dataset

**PATCH** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`



### Responses

#### 200 Returns dataset information.

> Data is at `body["result"]`

```json
{
  "isPublic": "*boolean*",
  "name": "*string*",
  "uuid": "*string*"
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



## Reads a dataset

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`



### Responses

#### 200 Returns a dataset.

> Data is at `body["result"]`

```json
{
  "isPublic": "*boolean*",
  "name": "*string*",
  "uuid": "*string*"
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



## Delete a dataset

**DELETE** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`

Deletes a dataset given a datasetId.

### Responses

#### 200 Returns the uuid and name of the deleted dataset.

> Data is at `body["result"]`

```json
{
  "name": "*string*",
  "uuid": "*string*"
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

#### 404 Bad Request.

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


