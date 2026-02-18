# Zero Trust Gateway proxy endpoints

## Create a proxy endpoint

**POST** `/accounts/{account_id}/gateway/proxy_endpoints`

Create a new Zero Trust Gateway proxy endpoint.

### Responses

#### 200 Returns a created proxy endpoint response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Returns a created proxy endpoint response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List proxy endpoints

**GET** `/accounts/{account_id}/gateway/proxy_endpoints`

List all Zero Trust Gateway proxy endpoints for an account.

### Responses

#### 200 Returns a list of proxy endpoints response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Returns a list of proxy endpoints response failure.

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



## Update a proxy endpoint

**PATCH** `/accounts/{account_id}/gateway/proxy_endpoints/{proxy_endpoint_id}`

Update a configured Zero Trust Gateway proxy endpoint.

### Responses

#### 200 Returns an updated proxy endpoint response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Returns an updated proxy endpoint response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get a proxy endpoint

**GET** `/accounts/{account_id}/gateway/proxy_endpoints/{proxy_endpoint_id}`

Get a single Zero Trust Gateway proxy endpoint.

### Responses

#### 200 Returns a proxy endpoint response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Returns a proxy endpoint response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Delete a proxy endpoint

**DELETE** `/accounts/{account_id}/gateway/proxy_endpoints/{proxy_endpoint_id}`

Delete a configured Zero Trust Gateway proxy endpoint.

### Responses

#### 200 Returns a deleted proxy endpoint response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Returns a deleted proxy endpoint response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


