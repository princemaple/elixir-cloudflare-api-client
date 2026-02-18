# Workers AI Object Detection

## Execute @cf/facebook/omni-detr-resnet-50 model.

**POST** `/accounts/{account_id}/ai/run/@cf/facebook/omni-detr-resnet-50`



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


