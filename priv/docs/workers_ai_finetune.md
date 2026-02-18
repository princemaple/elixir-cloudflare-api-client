# Workers AI Finetune

## Create a new Finetune

**POST** `/accounts/{account_id}/ai/finetunes`



### Responses

#### 200 Returns the created finetune

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "model": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "public": "*boolean*"
}
```

#### 400 Finetune creation failed

```json
{
  "errors": [
    {}
  ],
  "success": "*boolean*"
}
```



## List Finetunes

**GET** `/accounts/{account_id}/ai/finetunes`



### Responses

#### 200 Returns all finetunes

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "model": "*string*",
  "modified_at": "*string*",
  "name": "*string*"
}
```

#### 400 Bad Request

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



## List Public Finetunes

**GET** `/accounts/{account_id}/ai/finetunes/public`



### Responses

#### 200 Returns all public finetunes

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "id": "*string*",
    "model": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "public": "*boolean*"
  }
]
```

#### 400 Bad Request

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



## Upload a Finetune Asset

**POST** `/accounts/{account_id}/ai/finetunes/{finetune_id}/finetune-assets`



### Responses

#### 200 Returns successfully if finetunes were uploaded

> Data is at `body["result"]`

```json
{
  "success": "*boolean*"
}
```

#### 400 Finetune creation failed

```json
{
  "errors": [
    {}
  ],
  "success": "*boolean*"
}
```


