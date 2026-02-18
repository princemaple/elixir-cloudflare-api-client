# BinDB

## Posts a file to Binary Storage

**POST** `/accounts/{account_id}/cloudforce-one/binary`



### Responses

#### 200 Returns file information

> Data is at `body["result"]`

```json
{
  "content_type": "*string*",
  "md5": "*string*",
  "sha1": "*string*",
  "sha256": "*string*"
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



## Retrieves a file from Binary Storage

**GET** `/accounts/{account_id}/cloudforce-one/binary/{hash}`



### Responses

#### 200 Returns file information

> Data is at `body["result"]`

```json

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


