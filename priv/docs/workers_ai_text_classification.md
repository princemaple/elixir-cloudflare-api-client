# Workers AI Text Classification

## Execute @cf/baai/bge-reranker-base model.

**POST** `/accounts/{account_id}/ai/run/@cf/baai/bge-reranker-base`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Execute @cf/huggingface/distilbert-sst-2-int8 model.

**POST** `/accounts/{account_id}/ai/run/@cf/huggingface/distilbert-sst-2-int8`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Execute @cf/huggingface/omni-distilbert-sst-2-int8 model.

**POST** `/accounts/{account_id}/ai/run/@cf/huggingface/omni-distilbert-sst-2-int8`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


