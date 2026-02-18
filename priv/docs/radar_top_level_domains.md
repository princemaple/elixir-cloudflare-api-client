# Radar Top-Level Domains

## List TLDs

**GET** `/radar/tlds`

Retrieves a list of TLDs.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "tlds": [
    {
      "manager": "*string*",
      "tld": "*string*",
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



## Get TLD details

**GET** `/radar/tlds/{tld}`

Retrieves the requested TLD information.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "tld": {
    "manager": "*string*",
    "tld": "*string*",
    "type": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


