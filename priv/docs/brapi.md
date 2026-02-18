# brapi

## Get HTML content.

**POST** `/accounts/{account_id}/browser-rendering/content`

Fetches rendered HTML content from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.

### Responses

#### 200 Returns the page's content

> Data is at `body["result"]`

```json
"*string*"
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get json.

**POST** `/accounts/{account_id}/browser-rendering/json`

Gets json from a webpage from a provided URL or HTML. Pass `prompt` or `schema` in the body. Control page loading with `gotoOptions` and `waitFor*` options.

### Responses

#### 200 Returns the JSON based on a user prompt or json schema

> Data is at `body["result"]`

```json
{}
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "rawAiResponse": "*string*",
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get Links.

**POST** `/accounts/{account_id}/browser-rendering/links`

Get links from a web page.

### Responses

#### 200 Returns the links

> Data is at `body["result"]`

```json
[
  "*string*"
]
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get markdown.

**POST** `/accounts/{account_id}/browser-rendering/markdown`

Gets markdown of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options.

### Responses

#### 200 Returns the page markdown

> Data is at `body["result"]`

```json
"*string*"
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get PDF.

**POST** `/accounts/{account_id}/browser-rendering/pdf`

Fetches rendered PDF from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.

### Responses

#### 200 Returns the pdf

> Data is at `body["result"]`

```json

```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Scrape elements.

**POST** `/accounts/{account_id}/browser-rendering/scrape`

Get meta attributes like height, width, text and others of selected elements.

### Responses

#### 200 Returns the scraped elements

> Data is at `body["result"]`

```json
[
  {
    "results": {
      "attributes": [
        {
          "name": "*string*",
          "value": "*string*"
        }
      ],
      "height": "*number*",
      "html": "*string*",
      "left": "*number*",
      "text": "*string*",
      "top": "*number*",
      "width": "*number*"
    },
    "selector": "*string*"
  }
]
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get screenshot.

**POST** `/accounts/{account_id}/browser-rendering/screenshot`

Takes a screenshot of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.

### Responses

#### 200 Returns the screenshot

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get HTML content and screenshot.

**POST** `/accounts/{account_id}/browser-rendering/snapshot`

Returns the page's HTML content and screenshot. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.

### Responses

#### 200 Returns the screenshot

> Data is at `body["result"]`

```json
{
  "content": "*string*",
  "screenshot": "*string*"
}
```

#### 400 The request contains errors or didn't properly encode content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 422 Request failed due to site-related issues such as timeouts, SSL errors, or inaccessible content.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Request failed due to rate limiting. The Retry-After header indicates when the client should retry the request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal server error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


