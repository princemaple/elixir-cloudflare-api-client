# Zero Trust certificates

## Create Zero Trust certificate

**POST** `/accounts/{account_id}/gateway/certificates`

Create a new Zero Trust certificate.

### Responses

#### 200 Creates Zero Trust certificate response.

> Data is at `body["result"]`

```json
{
  "binding_status": "*string*",
  "certificate": "*string*",
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "in_use": "*boolean*",
  "issuer_org": "*string*",
  "issuer_raw": "*string*",
  "type": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Creates Zero Trust certificate response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List Zero Trust certificates

**GET** `/accounts/{account_id}/gateway/certificates`

List all Zero Trust certificates for an account.

### Responses

#### 200 Lists Zero Trust certificates response.

> Data is at `body["result"]`

```json
[
  {
    "binding_status": "*string*",
    "certificate": "*string*",
    "created_at": "*string*",
    "expires_on": "*string*",
    "fingerprint": "*string*",
    "id": "*string*",
    "in_use": "*boolean*",
    "issuer_org": "*string*",
    "issuer_raw": "*string*",
    "type": "*string*",
    "updated_at": "*string*",
    "uploaded_on": "*string*"
  }
]
```

#### 4XX Lists Zero Trust certificates response failure.

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



## Get Zero Trust certificate details

**GET** `/accounts/{account_id}/gateway/certificates/{certificate_id}`

Get a single Zero Trust certificate.

### Responses

#### 200 Gets Zero Trust certificate details response.

> Data is at `body["result"]`

```json
{
  "binding_status": "*string*",
  "certificate": "*string*",
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "in_use": "*boolean*",
  "issuer_org": "*string*",
  "issuer_raw": "*string*",
  "type": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Gets Zero Trust certificate details response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Delete Zero Trust certificate

**DELETE** `/accounts/{account_id}/gateway/certificates/{certificate_id}`

Delete a gateway-managed Zero Trust certificate. You must deactivate the certificate from the edge (inactive) before deleting it.

### Responses

#### 200 Deletes Zero Trust certificate response.

> Data is at `body["result"]`

```json
{
  "binding_status": "*string*",
  "certificate": "*string*",
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "in_use": "*boolean*",
  "issuer_org": "*string*",
  "issuer_raw": "*string*",
  "type": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Deletes Zero Trust certificate response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Activate a Zero Trust certificate

**POST** `/accounts/{account_id}/gateway/certificates/{certificate_id}/activate`

Bind a single Zero Trust certificate to the edge.

### Responses

#### 202 Activates Zero Trust certificate details response.

> Data is at `body["result"]`

```json
{
  "binding_status": "*string*",
  "certificate": "*string*",
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "in_use": "*boolean*",
  "issuer_org": "*string*",
  "issuer_raw": "*string*",
  "type": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Activates Zero Trust certificate details response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Deactivate a Zero Trust certificate

**POST** `/accounts/{account_id}/gateway/certificates/{certificate_id}/deactivate`

Unbind a single Zero Trust certificate from the edge.

### Responses

#### 201 Deactivate Zero Trust certificate details response.

> Data is at `body["result"]`

```json
{
  "binding_status": "*string*",
  "certificate": "*string*",
  "created_at": "*string*",
  "expires_on": "*string*",
  "fingerprint": "*string*",
  "id": "*string*",
  "in_use": "*boolean*",
  "issuer_org": "*string*",
  "issuer_raw": "*string*",
  "type": "*string*",
  "updated_at": "*string*",
  "uploaded_on": "*string*"
}
```

#### 4XX Deactivate Zero Trust certificate details response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


