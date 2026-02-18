# Zone Settings

## Edit multiple zone settings

**PATCH** `/zones/{zone_id}/settings`

Edit settings for a zone.


## Get all zone settings

**GET** `/zones/{zone_id}/settings`

Available settings for your user in relation to a zone.


## Change aegis setting

**PATCH** `/zones/{zone_id}/settings/aegis`

Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.


## Get aegis setting

**GET** `/zones/{zone_id}/settings/aegis`

Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.


## Change Cloudflare Fonts setting

**PATCH** `/zones/{zone_id}/settings/fonts`

Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.



## Get Cloudflare Fonts setting

**GET** `/zones/{zone_id}/settings/fonts`

Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.



## Change Origin H2 Max Streams Setting

**PATCH** `/zones/{zone_id}/settings/origin_h2_max_streams`

Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.


## Get Origin H2 Max Streams Setting

**GET** `/zones/{zone_id}/settings/origin_h2_max_streams`

Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.


## Change Origin Max HTTP Version Setting

**PATCH** `/zones/{zone_id}/settings/origin_max_http_version`

Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".


## Get Origin Max HTTP Version Setting

**GET** `/zones/{zone_id}/settings/origin_max_http_version`

Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".


## Change Cloudflare Speed Brain setting

**PATCH** `/zones/{zone_id}/settings/speed_brain`

Speed Brain lets compatible browsers speculate on content which can be prefetched or preloaded, making website
navigation faster. Refer to the Cloudflare Speed Brain documentation for more information.



## Get Cloudflare Speed Brain setting

**GET** `/zones/{zone_id}/settings/speed_brain`

Speed Brain lets compatible browsers speculate on content which can be prefetched or preloaded, making website
navigation faster. Refer to the Cloudflare Speed Brain documentation for more information.



## Edit zone setting

**PATCH** `/zones/{zone_id}/settings/{setting_id}`

Updates a single zone setting by the identifier


## Get zone setting

**GET** `/zones/{zone_id}/settings/{setting_id}`

Fetch a single zone setting by name

