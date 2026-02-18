# Secondary DNS (TSIG)

## Create TSIG

**POST** `/accounts/{account_id}/secondary_dns/tsigs`

Create TSIG.

### Responses

#### 200 Create TSIG response.

> Data is at `body["result"]`

```json
{
  "algo": "*string*",
  "id": "*string*",
  "name": "*string*",
  "secret": "*string*"
}
```

#### 4XX Create TSIG response failure.

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



## List TSIGs

**GET** `/accounts/{account_id}/secondary_dns/tsigs`

List TSIGs.

### Responses

#### 200 List TSIGs response.

> Data is at `body["result"]`

```json
[
  {
    "algo": "*string*",
    "id": "*string*",
    "name": "*string*",
    "secret": "*string*"
  }
]
```

#### 4XX List TSIGs response failure.

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



## Update TSIG

**PUT** `/accounts/{account_id}/secondary_dns/tsigs/{tsig_id}`

Modify TSIG.

### Responses

#### 200 Update TSIG response.

> Data is at `body["result"]`

```json
{
  "algo": "*string*",
  "id": "*string*",
  "name": "*string*",
  "secret": "*string*"
}
```

#### 4XX Update TSIG response failure.

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



## TSIG Details

**GET** `/accounts/{account_id}/secondary_dns/tsigs/{tsig_id}`

Get TSIG.

### Responses

#### 200 TSIG Details response.

> Data is at `body["result"]`

```json
{
  "algo": "*string*",
  "id": "*string*",
  "name": "*string*",
  "secret": "*string*"
}
```

#### 4XX TSIG Details response failure.

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



## Delete TSIG

**DELETE** `/accounts/{account_id}/secondary_dns/tsigs/{tsig_id}`

Delete TSIG.

### Responses

#### 200 Delete TSIG response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete TSIG response failure.

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


