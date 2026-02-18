# Cloudflare Images Variants

## Create a variant

**POST** `/accounts/{account_id}/images/v1/variants`

Specify variants that allow you to resize images for different use cases.

### Responses

#### 200 Create a variant response

> Data is at `body["result"]`

```json
{
  "variant": {
    "id": "*string*",
    "neverRequireSignedURLs": "*boolean*",
    "options": {
      "fit": null,
      "height": null,
      "metadata": null,
      "width": null
    }
  }
}
```

#### 4XX Create a variant response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List variants

**GET** `/accounts/{account_id}/images/v1/variants`

Lists existing variants.

### Responses

#### 200 List variants response

> Data is at `body["result"]`

```json
{
  "variants": {
    "hero": {
      "id": "*string*",
      "neverRequireSignedURLs": "*boolean*",
      "options": {
        "fit": null,
        "height": null,
        "metadata": null,
        "width": null
      }
    }
  }
}
```

#### 4XX List variants response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a variant

**PATCH** `/accounts/{account_id}/images/v1/variants/{variant_id}`

Updating a variant purges the cache for all images associated with the variant.

### Responses

#### 200 Update a variant response

> Data is at `body["result"]`

```json
{
  "variant": {
    "id": "*string*",
    "neverRequireSignedURLs": "*boolean*",
    "options": {
      "fit": null,
      "height": null,
      "metadata": null,
      "width": null
    }
  }
}
```

#### 4XX Update a variant response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Variant details

**GET** `/accounts/{account_id}/images/v1/variants/{variant_id}`

Fetch details for a single variant.

### Responses

#### 200 Variant details response

> Data is at `body["result"]`

```json
{
  "variant": {
    "id": "*string*",
    "neverRequireSignedURLs": "*boolean*",
    "options": {
      "fit": null,
      "height": null,
      "metadata": null,
      "width": null
    }
  }
}
```

#### 4XX Variant details response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete a variant

**DELETE** `/accounts/{account_id}/images/v1/variants/{variant_id}`

Deleting a variant purges the cache for all images associated with the variant.

### Responses

#### 200 Delete a variant response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete a variant response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


