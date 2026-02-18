# Secondary DNS (ACL)

## Create ACL

**POST** `/accounts/{account_id}/secondary_dns/acls`

Create ACL.

### Responses

#### 200 Create ACL response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "ip_range": "*string*",
  "name": "*string*"
}
```

#### 4XX Create ACL response failure.

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



## List ACLs

**GET** `/accounts/{account_id}/secondary_dns/acls`

List ACLs.

### Responses

#### 200 List ACLs response.

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "ip_range": "*string*",
    "name": "*string*"
  }
]
```

#### 4XX List ACLs response failure.

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



## Update ACL

**PUT** `/accounts/{account_id}/secondary_dns/acls/{acl_id}`

Modify ACL.

### Responses

#### 200 Update ACL response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "ip_range": "*string*",
  "name": "*string*"
}
```

#### 4XX Update ACL response failure.

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



## ACL Details

**GET** `/accounts/{account_id}/secondary_dns/acls/{acl_id}`

Get ACL.

### Responses

#### 200 ACL Details response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "ip_range": "*string*",
  "name": "*string*"
}
```

#### 4XX ACL Details response failure.

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



## Delete ACL

**DELETE** `/accounts/{account_id}/secondary_dns/acls/{acl_id}`

Delete ACL.

### Responses

#### 200 Delete ACL response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete ACL response failure.

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


