# Cloudflare Images

## Upload an image

**POST** `/accounts/{account_id}/images/v1`

Upload an image with up to 10 Megabytes using a single HTTP POST (multipart/form-data) request.
An image can be uploaded by sending an image file or passing an accessible to an API url.


### Responses

#### 200 Upload an image response

> Data is at `body["result"]`

```json
{
  "creator": "*string*",
  "filename": "*string*",
  "id": "*string*",
  "meta": {},
  "requireSignedURLs": "*boolean*",
  "uploaded": "*string*",
  "variants": [
    null
  ]
}
```

#### 4XX Upload an image response failure

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



## List images

**GET** `/accounts/{account_id}/images/v1`

List up to 100 images with one request. Use the optional parameters below to get a specific range of images.

### Responses

#### 200 List images response

> Data is at `body["result"]`

```json
{
  "images": [
    {
      "creator": "*string*",
      "filename": "*string*",
      "id": "*string*",
      "meta": {},
      "requireSignedURLs": "*boolean*",
      "uploaded": "*string*",
      "variants": [
        null
      ]
    }
  ]
}
```

#### 4XX List images response failure

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



## Images usage statistics

**GET** `/accounts/{account_id}/images/v1/stats`

Fetch image statistics details for Cloudflare Images. The returned statistics detail storage usage, including the current image count vs this account's allowance.

### Responses

#### 200 Images usage statistics response

> Data is at `body["result"]`

```json
{
  "count": {
    "allowed": "*number*",
    "current": "*number*"
  }
}
```

#### 4XX Images usage statistics response failure

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



## Update image

**PATCH** `/accounts/{account_id}/images/v1/{image_id}`

Update image access control. On access control change, all copies of the image are purged from cache.

### Responses

#### 200 Update image response

> Data is at `body["result"]`

```json
{
  "creator": "*string*",
  "filename": "*string*",
  "id": "*string*",
  "meta": {},
  "requireSignedURLs": "*boolean*",
  "uploaded": "*string*",
  "variants": [
    null
  ]
}
```

#### 4XX Update image response failure

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



## Image details

**GET** `/accounts/{account_id}/images/v1/{image_id}`

Fetch details for a single image.

### Responses

#### 200 Image details response

> Data is at `body["result"]`

```json
{
  "creator": "*string*",
  "filename": "*string*",
  "id": "*string*",
  "meta": {},
  "requireSignedURLs": "*boolean*",
  "uploaded": "*string*",
  "variants": [
    null
  ]
}
```

#### 4XX Image details response failure

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



## Delete image

**DELETE** `/accounts/{account_id}/images/v1/{image_id}`

Delete an image on Cloudflare Images. On success, all copies of the image are deleted and purged from cache.

### Responses

#### 200 Delete image response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete image response failure

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



## Base image

**GET** `/accounts/{account_id}/images/v1/{image_id}/blob`

Fetch base image. For most images this will be the originally uploaded file. For larger images it can be a near-lossless version of the original.

### Responses

#### 200 Base image response. Returns uploaded image data.

> Data is at `body["result"]`

```json

```

#### 4XX Base image response failure

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



## List images V2

**GET** `/accounts/{account_id}/images/v2`

List up to 10000 images with up to 1000 results per page. Use the optional parameters below to get a specific range of images.
Pagination is supported via continuation_token.

**Metadata Filtering (Optional):**

You can optionally filter images by custom metadata fields using the `meta.<field>[<operator>]=<value>` syntax.

**Supported Operators:**
- `eq` / `eq:string` / `eq:number` / `eq:boolean` - Exact match
- `in` / `in:string` / `in:number` - Match any value in list (pipe-separated)

**Metadata Filter Constraints:**
- Maximum 5 metadata filters per request
- Maximum 5 levels of nesting (e.g., `meta.first.second.third.fourth.fifth`)
- Maximum 10 elements for list operators (`in`)
- Supports string, number, and boolean value types

**Examples:**
```
# List all images
/images/v2

# Filter by metadata [eq]
/images/v2?meta.status[eq:string]=active

# Filter by metadata [in]
/images/v2?meta.status[in]=pending|deleted|flagged

# Filter by metadata [in:number]
/images/v2?meta.ratings[in:number]=4|5

# Filter by nested metadata
/images/v2?meta.region.name[eq]=eu-west

# Combine metadata filters with creator
/images/v2?meta.status[eq]=active&creator=user123

# Multiple metadata filters (AND logic)
/images/v2?meta.status[eq]=active&meta.priority[eq:number]=5
```


### Responses

#### 200 List images response

> Data is at `body["result"]`

```json
{
  "images": [
    {
      "creator": "*string*",
      "filename": "*string*",
      "id": "*string*",
      "meta": {},
      "requireSignedURLs": "*boolean*",
      "uploaded": "*string*",
      "variants": [
        null
      ]
    }
  ]
}
```

#### 400 Bad request

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

#### 4XX List images response failure

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



## Create authenticated direct upload URL V2

**POST** `/accounts/{account_id}/images/v2/direct_upload`

Direct uploads allow users to upload images without API keys. A common use case are web apps, client-side applications, or mobile devices where users upload content directly to Cloudflare Images. This method creates a draft record for a future image. It returns an upload URL and an image identifier. To verify if the image itself has been uploaded, send an image details request (accounts/:account_identifier/images/v1/:identifier), and check that the `draft: true` property is not present.

### Responses

#### 200 Create authenticated direct upload URL V2 response

> Data is at `body["result"]`

```json
null
```

#### 4XX Create authenticated direct upload URL V2 response failure

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


