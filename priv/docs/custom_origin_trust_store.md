# Custom Origin Trust Store

## Upload Custom Origin Trust Store

**POST** `/zones/{zone_id}/acm/custom_trust_store`

Add Custom Origin Trust Store for a Zone.

### Responses

#### 200 Upload Custom Origin Trust Store response

> Data is at `body["result"]`

```json
{
  "certificate": "*string*",
  "expires_on": "*string*",
  "id": "*string*",
  "issuer": "*string*",
  "signature": "*string*",
  "status": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Upload Custom Origin Trust Store response failure

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



## List Custom Origin Trust Store Details

**GET** `/zones/{zone_id}/acm/custom_trust_store`

Get Custom Origin Trust Store for a Zone.

### Responses

#### 200 Custom Origin Trust Store Details response

> Data is at `body["result"]`

```json
[
  {
    "certificate": "*string*",
    "expires_on": "*string*",
    "id": "*string*",
    "issuer": "*string*",
    "signature": "*string*",
    "status": "*string*",
    "updated_at": "*string*",
    "uploaded_on": "*string*"
  }
]
```

#### 4XX Custom Origin Trust Store response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Custom Origin Trust Store Details

**GET** `/zones/{zone_id}/acm/custom_trust_store/{custom_origin_trust_store_id}`



### Responses

#### 200 Custom Origin Trust Store Details response

> Data is at `body["result"]`

```json
{
  "certificate": "*string*",
  "expires_on": "*string*",
  "id": "*string*",
  "issuer": "*string*",
  "signature": "*string*",
  "status": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Custom Origin Trust Store Details response failure

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



## Delete Custom Origin Trust Store

**DELETE** `/zones/{zone_id}/acm/custom_trust_store/{custom_origin_trust_store_id}`



### Responses

#### 200 Delete Custom Origin Trust Store response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Custom Origin Trust Store response failure

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


