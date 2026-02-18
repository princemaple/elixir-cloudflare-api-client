# Zone Settings

## Edit multiple zone settings

**PATCH** `/zones/{zone_id}/settings`

Edit settings for a zone.

### Responses

#### 200 Edit zone settings info response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Edit zone settings info response failure

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



## Get all zone settings

**GET** `/zones/{zone_id}/settings`

Available settings for your user in relation to a zone.

### Responses

#### 200 Get all Zone settings response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX Get all Zone settings response failure

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



## Change aegis setting

**PATCH** `/zones/{zone_id}/settings/aegis`

Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.

### Responses

#### 200 Change aegis setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": {
    "enabled": "*boolean*",
    "pool_id": "*string*"
  }
}
```

#### 4XX Change aegis setting response failure.

```json
{
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get aegis setting

**GET** `/zones/{zone_id}/settings/aegis`

Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.

### Responses

#### 200 Get aegis setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": {
    "enabled": "*boolean*",
    "pool_id": "*string*"
  }
}
```

#### 4XX Get aegis setting response failure.

```json
{
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Change Cloudflare Fonts setting

**PATCH** `/zones/{zone_id}/settings/fonts`

Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.


### Responses

#### 200 Change Cloudflare Fonts setting response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Change Cloudflare Fonts setting response failure.

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



## Get Cloudflare Fonts setting

**GET** `/zones/{zone_id}/settings/fonts`

Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.


### Responses

#### 200 Get Cloudflare Fonts setting response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Cloudflare Fonts setting response failure.

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



## Change Origin H2 Max Streams Setting

**PATCH** `/zones/{zone_id}/settings/origin_h2_max_streams`

Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.

### Responses

#### 200 Change Origin H2 Max Streams setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*integer*"
}
```

#### 4XX Change Origin H2 Max Streams response failure.

```json
{
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Origin H2 Max Streams Setting

**GET** `/zones/{zone_id}/settings/origin_h2_max_streams`

Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.

### Responses

#### 200 Get Origin H2 Max Streams setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*integer*"
}
```

#### 4XX Get Origin H2 Max Streams setting response failure.

```json
{
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Change Origin Max HTTP Version Setting

**PATCH** `/zones/{zone_id}/settings/origin_max_http_version`

Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".

### Responses

#### 200 Change Origin Max HTTP Version setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Change Origin Max HTTP Version response failure.

```json
{
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Origin Max HTTP Version Setting

**GET** `/zones/{zone_id}/settings/origin_max_http_version`

Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".

### Responses

#### 200 Get Origin Max HTTP Version setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Origin Max HTTP Version setting response failure.

```json
{
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Change Cloudflare Speed Brain setting

**PATCH** `/zones/{zone_id}/settings/speed_brain`

Speed Brain lets compatible browsers speculate on content which can be prefetched or preloaded, making website
navigation faster. Refer to the Cloudflare Speed Brain documentation for more information.


### Responses

#### 200 Cloudflare Speed Brain setting response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Change Cloudflare Speed Brain setting response failure.

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



## Get Cloudflare Speed Brain setting

**GET** `/zones/{zone_id}/settings/speed_brain`

Speed Brain lets compatible browsers speculate on content which can be prefetched or preloaded, making website
navigation faster. Refer to the Cloudflare Speed Brain documentation for more information.


### Responses

#### 200 Get Cloudflare Speed Brain setting response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Cloudflare Speed Brain setting response failure.

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



## Edit zone setting

**PATCH** `/zones/{zone_id}/settings/{setting_id}`

Updates a single zone setting by the identifier

### Responses

#### 200 Edit zone setting response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Edit zone settings info response failure

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



## Get zone setting

**GET** `/zones/{zone_id}/settings/{setting_id}`

Fetch a single zone setting by name

### Responses

#### 200 Get zone setting response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get zone setting response failure

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


