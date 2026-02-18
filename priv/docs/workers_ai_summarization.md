# Workers AI Summarization

## Execute @cf/facebook/bart-large-cnn model.

**POST** `/accounts/{account_id}/ai/run/@cf/facebook/bart-large-cnn`



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



## Execute @cf/facebook/omni-bart-large-cnn model.

**POST** `/accounts/{account_id}/ai/run/@cf/facebook/omni-bart-large-cnn`



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


