# Worker Tail Logs

## Start Tail

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/tails`

Starts a tail that receives logs and exception from a Worker.

### Responses

#### 200 Start Tail response.

> Data is at `body["result"]`

```json
{
  "expires_at": "*string*",
  "id": "*string*",
  "url": "*string*"
}
```

#### 4XX Start Tail response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Tails

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/tails`

Get list of tails currently deployed on a Worker.

### Responses

#### 200 List Tails response.

> Data is at `body["result"]`

```json
{
  "expires_at": "*string*",
  "id": "*string*",
  "url": "*string*"
}
```

#### 4XX List Tails response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete Tail

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/tails/{id}`

Deletes a tail from a Worker.

### Responses

#### 200 Delete Tail response.

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "success": "*boolean*"
}
```

#### 4XX Delete Tail response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


