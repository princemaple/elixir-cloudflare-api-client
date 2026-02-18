# Zero Trust Gateway PAC files

## Create a PAC file

**POST** `/accounts/{account_id}/gateway/pacfiles`

Create a new Zero Trust Gateway PAC file.

### Responses

#### 200 Returns a created PAC file response.

> Data is at `body["result"]`

```json
{
  "contents": "*string*",
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "name": "*string*",
  "slug": "*string*",
  "updated_at": "*string*",
  "url": "*string*"
}
```

#### 4XX Returns a created PAC file response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List PAC files

**GET** `/accounts/{account_id}/gateway/pacfiles`

List all Zero Trust Gateway PAC files for an account.

### Responses

#### 200 Returns a list of PAC files response.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "id": "*string*",
    "name": "*string*",
    "slug": "*string*",
    "updated_at": "*string*",
    "url": "*string*"
  }
]
```

#### 4XX Returns a list of PAC files response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update a Zero Trust Gateway PAC file

**PUT** `/accounts/{account_id}/gateway/pacfiles/{pacfile_id}`

Update a configured Zero Trust Gateway PAC file.

### Responses

#### 200 Update a Zero Trust Gateway PAC file response.

> Data is at `body["result"]`

```json
{
  "contents": "*string*",
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "name": "*string*",
  "slug": "*string*",
  "updated_at": "*string*",
  "url": "*string*"
}
```

#### 4XX Update a Zero Trust Gateway PAC file response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get a PAC file

**GET** `/accounts/{account_id}/gateway/pacfiles/{pacfile_id}`

Get a single Zero Trust Gateway PAC file.

### Responses

#### 200 Returns a PAC file response.

> Data is at `body["result"]`

```json
{
  "contents": "*string*",
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "name": "*string*",
  "slug": "*string*",
  "updated_at": "*string*",
  "url": "*string*"
}
```

#### 4XX Returns a PAC file response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Delete a PAC file

**DELETE** `/accounts/{account_id}/gateway/pacfiles/{pacfile_id}`

Delete a configured Zero Trust Gateway PAC file.

### Responses

#### 200 Returns a deleted PAC file response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Returns a deleted PAC file response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


