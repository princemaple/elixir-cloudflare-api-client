# ppc_stripe

## Creates the stripe config for a crawler

**POST** `/accounts/{account_id}/pay-per-crawl/crawler/stripe`

Creates the stripe config for a crawler.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "url": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Gets the stripe config for a crawler

**GET** `/accounts/{account_id}/pay-per-crawl/crawler/stripe`

Gets the stripe config for a crawler.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "connect_status": "*string*",
  "stripe_account_id": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Deletes the stripe config for a crawler

**DELETE** `/accounts/{account_id}/pay-per-crawl/crawler/stripe`

Deletes the stripe config for a crawler.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error_chain": [
        null
      ],
      "message": "*string*",
      "meta": null,
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error_chain": [
        null
      ],
      "message": "*string*",
      "meta": null,
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result_info": {
    "count": "*integer*",
    "page": "*integer*",
    "per_page": "*integer*",
    "total_count": "*integer*",
    "total_pages": "*integer*"
  },
  "success": "*boolean*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Creates the stripe config for a publisher

**POST** `/accounts/{account_id}/pay-per-crawl/publisher/stripe`

Creates the stripe config for a publisher.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "url": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Gets the stripe config for a publisher

**GET** `/accounts/{account_id}/pay-per-crawl/publisher/stripe`

Gets the stripe config for a publisher.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "connect_status": "*string*",
  "stripe_account_id": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```



## Deletes the stripe config for a publisher

**DELETE** `/accounts/{account_id}/pay-per-crawl/publisher/stripe`

Deletes the stripe config for a publisher.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error_chain": [
        null
      ],
      "message": "*string*",
      "meta": null,
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error_chain": [
        null
      ],
      "message": "*string*",
      "meta": null,
      "source": {
        "parameter": null,
        "parameter_value_index": null,
        "pointer": null
      }
    }
  ],
  "result_info": {
    "count": "*integer*",
    "page": "*integer*",
    "per_page": "*integer*",
    "total_count": "*integer*",
    "total_pages": "*integer*"
  },
  "success": "*boolean*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "error": "*string*",
      "source": {
        "pointer": null
      }
    }
  ],
  "result": null,
  "success": "*boolean*"
}
```


