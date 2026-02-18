# Build Tokens

## Create build token

**POST** `/accounts/{account_id}/builds/tokens`

Create a new build authentication token

### Responses

#### 200 Build token created successfully

> Data is at `body["result"]`

```json
{
  "build_token_name": "*string*",
  "build_token_uuid": "*string*",
  "cloudflare_token_id": "*string*",
  "owner_type": "*string*"
}
```



## List build tokens

**GET** `/accounts/{account_id}/builds/tokens`

Get all build tokens with pagination

### Responses

#### 200 Build tokens retrieved successfully

> Data is at `body["result"]`

```json
[
  {
    "build_token_name": "*string*",
    "build_token_uuid": "*string*",
    "cloudflare_token_id": "*string*",
    "owner_type": "*string*"
  }
]
```



## Delete build token

**DELETE** `/accounts/{account_id}/builds/tokens/{build_token_uuid}`

Remove a build authentication token

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 404 

```json

```


