## Get all Zone settings

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Available settings for your user in relation to a zone

> GET zones/:zone_identifier/settings


## Get Advanced DDOS setting

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise

`GET` Advanced protection from Distributed Denial of Service (DDoS) attacks on your website. This is an uneditable value that is 'on' in the case of Business and Enterprise zones

> GET zones/:zone_identifier/settings/advanced_ddos


## Get Always Online setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` When enabled, Always Online will serve pages from our cache if your server is offline (https://support.cloudflare.com/hc/en-us/articles/200168006)

> GET zones/:zone_identifier/settings/always_online


## Get Always Use HTTPS setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Reply to all requests for URLs that use "http" with a 301 redirect to the equivalent "https" URL. If you only want to redirect for a subset of requests, consider creating an "Always use HTTPS" page rule.

> GET zones/:zone_identifier/settings/always_use_https


## Get Opportunistic Onion setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Add an Alt-Svc header to all legitimate requests from Tor, allowing the connection to use our onion services instead of exit nodes.

> GET zones/:zone_identifier/settings/opportunistic_onion


## Get Orange to Orange (O2O)

**Permission needed:** `#zone_settings:read`

Available in:

* enterprise

`GET` Orange to Orange (O2O) allows zones on Cloudflare to CNAME to other zones also on Cloudflare.

> GET zones/:zone_identifier/settings/orange_to_orange


## Get Automatic HTTPS Rewrites setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`GET` Enable the Automatic HTTPS Rewrites feature for this zone.

> GET zones/:zone_identifier/settings/automatic_https_rewrites


## Get Browser Cache TTL setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Browser Cache TTL (in seconds) specifies how long Cloudflare-cached resources will remain on your visitors' computers. Cloudflare will honor any larger times specified by your server. (https://support.cloudflare.com/hc/en-us/articles/200168276)

> GET zones/:zone_identifier/settings/browser_cache_ttl


## Get Browser Check setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Browser Integrity Check is similar to Bad Behavior and looks for common HTTP headers abused most commonly by spammers and denies access to your page.  It will also challenge visitors that do not have a user agent or a non standard user agent (also commonly used by abuse bots, crawlers or visitors). (https://support.cloudflare.com/hc/en-us/articles/200170086)

> GET zones/:zone_identifier/settings/browser_check


## Get Cache Level setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Cache Level functions based off the setting level. The basic setting will cache most static resources (i.e., css, images, and JavaScript). The simplified setting will ignore the query string when delivering a cached resource. The aggressive setting will cache all static resources, including ones with a query string. (https://support.cloudflare.com/hc/en-us/articles/200168256)

> GET zones/:zone_identifier/settings/cache_level


## Get Challenge TTL setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Specify how long a visitor is allowed access to your site after successfully completing a challenge (such as a CAPTCHA). After the TTL has expired the visitor will have to complete a new challenge. We recommend a 15 - 45 minute setting and will attempt to honor any setting above 45 minutes. (https://support.cloudflare.com/hc/en-us/articles/200170136)

> GET zones/:zone_identifier/settings/challenge_ttl


## Get Development Mode setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Development Mode temporarily allows you to enter development mode for your websites if you need to make changes to your site. This will bypass Cloudflare's accelerated cache and slow down your site, but is useful if you are making changes to cacheable content (like images, css, or JavaScript) and would like to see those changes right away. Once entered, development mode will last for 3 hours and then automatically toggle off.

> GET zones/:zone_identifier/settings/development_mode


## Get Email Obfuscation setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Encrypt email adresses on your web page from bots, while keeping them visible to humans. (https://support.cloudflare.com/hc/en-us/articles/200170016)

> GET zones/:zone_identifier/settings/email_obfuscation


## Get Hotlink Protection setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` When enabled, the Hotlink Protection option ensures that other sites cannot suck up your bandwidth by building pages that use images hosted on your site. Anytime a request for an image on your site hits Cloudflare, we check to ensure that it's not another site requesting them. People will still be able to download and view images from your page, but other sites won't be able to steal them for use on their own pages. (https://support.cloudflare.com/hc/en-us/articles/200170026)

> GET zones/:zone_identifier/settings/hotlink_protection


## Get IP Geolocation setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Enable IP Geolocation to have Cloudflare geolocate visitors to your website and pass the country code to you. (https://support.cloudflare.com/hc/en-us/articles/200168236)

> GET zones/:zone_identifier/settings/ip_geolocation


## Get IPv6 setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Enable IPv6 on all subdomains that are Cloudflare enabled.  (https://support.cloudflare.com/hc/en-us/articles/200168586)

> GET zones/:zone_identifier/settings/ipv6


## Get Minify setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Automatically minify certain assets for your website (https://support.cloudflare.com/hc/en-us/articles/200168196).

> GET zones/:zone_identifier/settings/minify


## Get Mobile Redirect setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Automatically redirect visitors on mobile devices to a mobile-optimized subdomain (https://support.cloudflare.com/hc/en-us/articles/200168336).

> GET zones/:zone_identifier/settings/mobile_redirect


## Get Mirage setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Automatically optimize image loading for website visitors on mobile devices (http://blog.cloudflare.com/mirage2-solving-mobile-speed).

> GET zones/:zone_identifier/settings/mirage


## Get Enable Error Pages On setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`GET` Cloudflare will proxy customer error pages on any 502,504 errors on origin server instead of showing a default Cloudflare error page. This does not apply to 522 errors and is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/origin_error_page_pass_thru


## Get Opportunistic Encryption setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`GET` Enable the Opportunistic Encryption feature for this zone.

> GET zones/:zone_identifier/settings/opportunistic_encryption


## Get Polish setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Strips metadata and compresses your images for faster page load times. Basic (Lossless): Reduce the size of PNG, JPEG, and GIF files - no impact on visual quality. Basic + JPEG (Lossy): Further reduce the size of JPEG files for faster image loading. Larger JPEGs are converted to progressive images, loading a lower-resolution image first and ending in a higher-resolution version. Not recommended for hi-res photography sites.

> GET zones/:zone_identifier/settings/polish


## Get WebP setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` When the client requesting the image supports the WebP image codec, Cloudflare will serve a WebP version of the image when WebP offers a performance advantage over the original image format.

> GET zones/:zone_identifier/settings/webp


## Get Brotli setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` When the client requesting an asset supports the brotli compression algorithm, Cloudflare will serve a brotli compressed version of the asset.

> GET zones/:zone_identifier/settings/brotli


## Get Prefetch Preload setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`GET` Cloudflare will prefetch any URLs that are included in the response headers. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/prefetch_preload


## Get Privacy Pass setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Privacy Pass is a browser extension developed by the Privacy Pass Team to improve the browsing experience for your visitors. Enabling Privacy Pass will reduce the number of CAPTCHAs shown to your visitors. (https://support.cloudflare.com/hc/en-us/articles/115001992652-Privacy-Pass)

> GET zones/:zone_identifier/settings/privacy_pass


## Get Response Buffering setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`GET` Enables or disables buffering of responses from the proxied server. Cloudflare may buffer the whole payload to deliver it at once to the client versus allowing it to be delivered in chunks. By default, the proxied server streams directly and is not buffered by Cloudflare. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/response_buffering


## Get Rocket Loader setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Rocket Loader is a general-purpose asynchronous JavaScript optimisation which prioritises the rendering of your content while loading your site's Javascript asynchronously. Turning on Rocket Loader will immediately improve a web page's rendering time sometimes measured as Time to First Paint (TTFP) and also the window.onload time (assuming there is JavaScript on the page), which can have a positive impact on your Google search ranking. When turned on, Rocket Loader will automatically defer the loading of all Javascript referenced in your HTML, with no configuration required. (https://support.cloudflare.com/hc/en-us/articles/200168056)

> GET zones/:zone_identifier/settings/rocket_loader


## Get Security Header (HSTS) setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Cloudflare security header for a zone.

> GET zones/:zone_identifier/settings/security_header


## Get Security Level setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Choose the appropriate security profile for your website, which will automatically adjust each of the security settings. If you choose to customize an individual security setting, the profile will become Custom. (https://support.cloudflare.com/hc/en-us/articles/200170056)

> GET zones/:zone_identifier/settings/security_level


## Get Server Side Exclude setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` If there is sensitive content on your website that you want visible to real visitors, but that you want to hide from suspicious visitors, all you have to do is wrap the content with Cloudflare SSE tags. Wrap any content that you want to be excluded from suspicious visitors in the following SSE tags: <!--sse--><!--/sse-->. For example: <!--sse-->  Bad visitors won't see my phone number, 555-555-5555 <!--/sse-->. Note: SSE only will work with HTML. If you have HTML minification enabled, you won't see the SSE tags in your HTML source when it's served through Cloudflare. SSE will still function in this case, as Cloudflare's HTML minification and SSE functionality occur on-the-fly as the resource moves through our network to the visitor's computer. (https://support.cloudflare.com/hc/en-us/articles/200170036)

> GET zones/:zone_identifier/settings/server_side_exclude


## Get Enable Query String Sort setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`GET` Cloudflare will treat files with the same query strings as the same file in cache, regardless of the order of the query strings. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/sort_query_string_for_cache


## Get SSL setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` SSL encrypts your visitor's connection and safeguards credit card numbers and other personal data to and from your website. SSL can take up to 5 minutes to fully activate. Requires Cloudflare active on your root domain or www domain. Off: no SSL between the visitor and Cloudflare, and no SSL between Cloudflare and your web server  (all HTTP traffic). Flexible: SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, but no SSL between Cloudflare and your web server. You don't need to have an SSL cert on your web server, but your vistors will still see the site as being HTTPS enabled. Full:  SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have your own SSL cert or self-signed cert at the very least. Full (Strict): SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have a valid SSL certificate installed on your web server. This certificate must be signed by a certificate authority, have an expiration date in the future, and respond for the request domain name (hostname). (https://support.cloudflare.com/hc/en-us/articles/200170416)

> GET zones/:zone_identifier/settings/ssl


## Get Minimum TLS Version setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`GET` Only accept HTTPS requests that use at least the TLS protocol version specified. For example, if TLS 1.1 is selected, TLS 1.0 connections will be rejected, while 1.1, 1.2, and 1.3 (if enabled) will be permitted.

> GET zones/:zone_identifier/settings/min_tls_version


## Get Ciphers setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.

> GET zones/:zone_identifier/settings/ciphers


## Get TLS Client Auth setting

**Permission needed:** `#zone_settings:read`

Available in:

* enterprise

`GET` TLS Client Auth requires Cloudflare to connect to your origin server using a client certificate (Enterprise Only)

> GET zones/:zone_identifier/settings/tls_client_auth


## Get True Client IP setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`GET` Allows customer to continue to use True Client IP (Akamai feature) in the headers we send to the origin. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/true_client_ip_header


## Get Web Application Firewall (WAF) setting

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise

`GET` The WAF examines HTTP requests to your website.  It inspects both GET and POST requests and applies rules to help filter out illegitimate traffic from legitimate website visitors. The Cloudflare WAF inspects website addresses or URLs to detect anything out of the ordinary. If the Cloudflare WAF determines suspicious user behavior, then the WAF will 'challenge' the web visitor with a page that asks them to submit a CAPTCHA successfully  to continue their action. If the challenge is failed, the action will be stopped. What this means is that Cloudflare's WAF will block any traffic identified as illegitimate before it reaches your origin web server. (https://support.cloudflare.com/hc/en-us/articles/200172016)

> GET zones/:zone_identifier/settings/waf


## Get HTTP2 setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Value of the HTTP2 setting

> GET zones/:zone_identifier/settings/http2


## Get HTTP3 setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Value of the HTTP3 setting

> GET zones/:zone_identifier/settings/http3


## Get 0-RTT session resumption setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Value of the 0-RTT setting

> GET zones/:zone_identifier/settings/0rtt


## Get Pseudo IPv4 setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Value of the Pseudo IPv4 setting

> GET zones/:zone_identifier/settings/pseudo_ipv4


## Get WebSockets setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` WebSockets are open connections sustained between the client and the origin server. Inside a WebSockets connection, the client and the origin can pass data back and forth without having to reestablish sessions. This makes exchanging data within a WebSockets connection fast. WebSockets are often used for real-time applications such as live chat and gaming.  (https://support.cloudflare.com/hc/en-us/articles/200169466-Can-I-use-Cloudflare-with-WebSockets-)

> GET zones/:zone_identifier/settings/websockets


## Get Image Resizing setting

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise

`GET` Image Resizing provides on-demand resizing, conversion and optimisation for images served through Cloudflare's network. (https://developers.cloudflare.com/images/)

> GET zones/:zone_identifier/settings/image_resizing


## Get HTTP/2 Edge Prioritization setting

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise

`GET` HTTP/2 Edge Prioritization optimises the delivery of resources served through HTTP/2 to improve page load performance. It also supports fine control of content delivery when used in conjunction with Workers.

> GET zones/:zone_identifier/settings/h2_prioritization


## Get Automatic Platform Optimization for WordPress setting

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Automatic Platform Optimization for WordPress serves your WordPress site from Cloudflare's edge network and caches third party fonts.

> GET zones/:zone_identifier/settings/automatic_platform_optimization


## Edit zone settings info

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Edit settings for a zone

> PATCH zones/:zone_identifier/settings


## Change Always Online setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` When enabled, Always Online will serve pages from our cache if your server is offline (https://support.cloudflare.com/hc/en-us/articles/200168006)

> PATCH zones/:zone_identifier/settings/always_online


## Change Always Use HTTPS setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Reply to all requests for URLs that use "http" with a 301 redirect to the equivalent "https" URL. If you only want to redirect for a subset of requests, consider creating an "Always use HTTPS" page rule.

> PATCH zones/:zone_identifier/settings/always_use_https


## Change Opportunistic Onion setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Add an Alt-Svc header to all legitimate requests from Tor, allowing the connection to use our onion services instead of exit nodes.

> PATCH zones/:zone_identifier/settings/opportunistic_onion


## Change Orange to Orange (O2O)

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` Orange to Orange (O2O) allows zones on Cloudflare to CNAME to other zones also on Cloudflare.

> PATCH zones/:zone_identifier/settings/orange_to_orange


## Change Automatic HTTPS Rewrites setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Enable the Automatic HTTPS Rewrites feature for this zone.

> PATCH zones/:zone_identifier/settings/automatic_https_rewrites


## Change Browser Cache TTL setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Browser Cache TTL (in seconds) specifies how long Cloudflare-cached resources will remain on your visitors' computers. Cloudflare will honor any larger times specified by your server. (https://support.cloudflare.com/hc/en-us/articles/200168276)

> PATCH zones/:zone_identifier/settings/browser_cache_ttl


## Change Browser Check setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Browser Integrity Check is similar to Bad Behavior and looks for common HTTP headers abused most commonly by spammers and denies access to your page.  It will also challenge visitors that do not have a user agent or a non standard user agent (also commonly used by abuse bots, crawlers or visitors). (https://support.cloudflare.com/hc/en-us/articles/200170086)

> PATCH zones/:zone_identifier/settings/browser_check


## Change Cache Level setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Cache Level functions based off the setting level. The basic setting will cache most static resources (i.e., css, images, and JavaScript). The simplified setting will ignore the query string when delivering a cached resource. The aggressive setting will cache all static resources, including ones with a query string. (https://support.cloudflare.com/hc/en-us/articles/200168256)

> PATCH zones/:zone_identifier/settings/cache_level


## Change Challenge TTL setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Specify how long a visitor is allowed access to your site after successfully completing a challenge (such as a CAPTCHA). After the TTL has expired the visitor will have to complete a new challenge. We recommend a 15 - 45 minute setting and will attempt to honor any setting above 45 minutes. (https://support.cloudflare.com/hc/en-us/articles/200170136)

> PATCH zones/:zone_identifier/settings/challenge_ttl


## Change Development Mode setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Development Mode temporarily allows you to enter development mode for your websites if you need to make changes to your site. This will bypass Cloudflare's accelerated cache and slow down your site, but is useful if you are making changes to cacheable content (like images, css, or JavaScript) and would like to see those changes right away. Once entered, development mode will last for 3 hours and then automatically toggle off.

> PATCH zones/:zone_identifier/settings/development_mode


## Change Email Obfuscation setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Encrypt email adresses on your web page from bots, while keeping them visible to humans. (https://support.cloudflare.com/hc/en-us/articles/200170016)

> PATCH zones/:zone_identifier/settings/email_obfuscation


## Change Enable Error Pages On setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` Cloudflare will proxy customer error pages on any 502,504 errors on origin server instead of showing a default Cloudflare error page. This does not apply to 522 errors and is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/origin_error_page_pass_thru


## Change Enable Query String Sort setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` Cloudflare will treat files with the same query strings as the same file in cache, regardless of the order of the query strings. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/sort_query_string_for_cache


## Change Hotlink Protection setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` When enabled, the Hotlink Protection option ensures that other sites cannot suck up your bandwidth by building pages that use images hosted on your site. Anytime a request for an image on your site hits Cloudflare, we check to ensure that it's not another site requesting them. People will still be able to download and view images from your page, but other sites won't be able to steal them for use on their own pages. (https://support.cloudflare.com/hc/en-us/articles/200170026)

> PATCH zones/:zone_identifier/settings/hotlink_protection


## Change IP Geolocation setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Enable IP Geolocation to have Cloudflare geolocate visitors to your website and pass the country code to you. (https://support.cloudflare.com/hc/en-us/articles/200168236)

> PATCH zones/:zone_identifier/settings/ip_geolocation


## Change IPv6 setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Enable IPv6 on all subdomains that are Cloudflare enabled.  (https://support.cloudflare.com/hc/en-us/articles/200168586)

> PATCH zones/:zone_identifier/settings/ipv6


## Change Minify setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Automatically minify certain assets for your website (https://support.cloudflare.com/hc/en-us/articles/200168196).

> PATCH zones/:zone_identifier/settings/minify


## Change Mobile Redirect setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Automatically redirect visitors on mobile devices to a mobile-optimized subdomain (https://support.cloudflare.com/hc/en-us/articles/200168336).

> PATCH zones/:zone_identifier/settings/mobile_redirect


## Change Mirage setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Automatically optimize image loading for website visitors on mobile devices (http://blog.cloudflare.com/mirage2-solving-mobile-speed).

> PATCH zones/:zone_identifier/settings/mirage


## Change Opportunistic Encryption setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Enable the Opportunistic Encryption feature for this zone.

> PATCH zones/:zone_identifier/settings/opportunistic_encryption


## Change Polish setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Strips metadata and compresses your images for faster page load times. Basic (Lossless): Reduce the size of PNG, JPEG, and GIF files - no impact on visual quality. Basic + JPEG (Lossy): Further reduce the size of JPEG files for faster image loading. Larger JPEGs are converted to progressive images, loading a lower-resolution image first and ending in a higher-resolution version. Not recommended for hi-res photography sites.

> PATCH zones/:zone_identifier/settings/polish


## Change WebP setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` When the client requesting the image supports the WebP image codec, Cloudflare will serve a WebP version of the image when WebP offers a performance advantage over the original image format.

> PATCH zones/:zone_identifier/settings/webp


## Change Brotli setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` When the client requesting an asset supports the brotli compression algorithm, Cloudflare will serve a brotli compressed version of the asset.

> PATCH zones/:zone_identifier/settings/brotli


## Change Prefetch Preload setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` Cloudflare will prefetch any URLs that are included in the response headers. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/prefetch_preload


## Change Privacy Pass setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Privacy Pass is a browser extension developed by the Privacy Pass Team to improve the browsing experience for your visitors. Enabling Privacy Pass will reduce the number of CAPTCHAs shown to your visitors. (https://support.cloudflare.com/hc/en-us/articles/115001992652-Privacy-Pass)

> PATCH zones/:zone_identifier/settings/privacy_pass


## Change Response Buffering setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` Enables or disables buffering of responses from the proxied server. Cloudflare may buffer the whole payload to deliver it at once to the client versus allowing it to be delivered in chunks. By default, the proxied server streams directly and is not buffered by Cloudflare. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/response_buffering


## Change Rocket Loader setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Rocket Loader is a general-purpose asynchronous JavaScript optimisation which prioritises the rendering of your content while loading your site's Javascript asynchronously. Turning on Rocket Loader will immediately improve a web page's rendering time sometimes measured as Time to First Paint (TTFP) and also the window.onload time (assuming there is JavaScript on the page), which can have a positive impact on your Google search ranking. When turned on, Rocket Loader will automatically defer the loading of all Javascript referenced in your HTML, with no configuration required. (https://support.cloudflare.com/hc/en-us/articles/200168056)

> PATCH zones/:zone_identifier/settings/rocket_loader


## Change Security Header (HSTS) setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Cloudflare security header for a zone.

> PATCH zones/:zone_identifier/settings/security_header


## Change Security Level setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Choose the appropriate security profile for your website, which will automatically adjust each of the security settings. If you choose to customize an individual security setting, the profile will become Custom. (https://support.cloudflare.com/hc/en-us/articles/200170056)

> PATCH zones/:zone_identifier/settings/security_level


## Change Server Side Exclude setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` If there is sensitive content on your website that you want visible to real visitors, but that you want to hide from suspicious visitors, all you have to do is wrap the content with Cloudflare SSE tags. Wrap any content that you want to be excluded from suspicious visitors in the following SSE tags: <!--sse--><!--/sse-->. For example: <!--sse-->  Bad visitors won't see my phone number, 555-555-5555 <!--/sse-->. Note: SSE only will work with HTML. If you have HTML minification enabled, you won't see the SSE tags in your HTML source when it's served through Cloudflare. SSE will still function in this case, as Cloudflare's HTML minification and SSE functionality occur on-the-fly as the resource moves through our network to the visitor's computer. (https://support.cloudflare.com/hc/en-us/articles/200170036)

> PATCH zones/:zone_identifier/settings/server_side_exclude


## Change SSL setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` SSL encrypts your visitor's connection and safeguards credit card numbers and other personal data to and from your website. SSL can take up to 5 minutes to fully activate. Requires Cloudflare active on your root domain or www domain. Off: no SSL between the visitor and Cloudflare, and no SSL between Cloudflare and your web server  (all HTTP traffic). Flexible: SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, but no SSL between Cloudflare and your web server. You don't need to have an SSL cert on your web server, but your vistors will still see the site as being HTTPS enabled. Full:  SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have your own SSL cert or self-signed cert at the very least. Full (Strict): SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have a valid SSL certificate installed on your web server. This certificate must be signed by a certificate authority, have an expiration date in the future, and respond for the request domain name (hostname). (https://support.cloudflare.com/hc/en-us/articles/200170416)

> PATCH zones/:zone_identifier/settings/ssl


## Change TLS Client Auth setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` TLS Client Auth requires Cloudflare to connect to your origin server using a client certificate (Enterprise Only)

> PATCH zones/:zone_identifier/settings/tls_client_auth


## Change True Client IP setting

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise

`PATCH` Allows customer to continue to use True Client IP (Akamai feature) in the headers we send to the origin. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/true_client_ip_header


## Change Minimum TLS Version setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Only accept HTTPS requests that use at least the TLS protocol version specified. For example, if TLS 1.1 is selected, TLS 1.0 connections will be rejected, while 1.1, 1.2, and 1.3 (if enabled) will be permitted.

> PATCH zones/:zone_identifier/settings/min_tls_version


## Change Ciphers setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.

> PATCH zones/:zone_identifier/settings/ciphers


## Change Web Application Firewall (WAF) setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` The WAF examines HTTP requests to your website.  It inspects both GET and POST requests and applies rules to help filter out illegitimate traffic from legitimate website visitors. The Cloudflare WAF inspects website addresses or URLs to detect anything out of the ordinary. If the Cloudflare WAF determines suspicious user behavior, then the WAF will 'challenge' the web visitor with a page that asks them to submit a CAPTCHA successfully  to continue their action. If the challenge is failed, the action will be stopped. What this means is that Cloudflare's WAF will block any traffic identified as illegitimate before it reaches your origin web server. (https://support.cloudflare.com/hc/en-us/articles/200172016)

> PATCH zones/:zone_identifier/settings/waf


## Change HTTP2 setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Value of the HTTP2 setting

> PATCH zones/:zone_identifier/settings/http2


## Change HTTP3 setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Value of the HTTP3 setting

> PATCH zones/:zone_identifier/settings/http3


## Change 0-RTT session resumption setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Value of the 0-RTT setting

> PATCH zones/:zone_identifier/settings/0rtt


## Change Pseudo IPv4 setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` Value of the Pseudo IPv4 setting

> PATCH zones/:zone_identifier/settings/pseudo_ipv4


## Change WebSockets setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` WebSockets are open connections sustained between the client and the origin server. Inside a WebSockets connection, the client and the origin can pass data back and forth without having to reestablish sessions. This makes exchanging data within a WebSockets connection fast. WebSockets are often used for real-time applications such as live chat and gaming.  (https://support.cloudflare.com/hc/en-us/articles/200169466-Can-I-use-Cloudflare-with-WebSockets-)

> PATCH zones/:zone_identifier/settings/websockets


## Change Image Resizing setting

**Permission needed:** `#zone_settings:edit`

Available in:

* business
* enterprise

`PATCH` Image Resizing provides on-demand resizing, conversion and optimisation for images served through Cloudflare's network. (https://developers.cloudflare.com/images/)

> PATCH zones/:zone_identifier/settings/image_resizing


## Change HTTP/2 Edge Prioritization setting

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PATCH` HTTP/2 Edge Prioritization optimises the delivery of resources served through HTTP/2 to improve page load performance. It also supports fine control of content delivery when used in conjunction with Workers.

> PATCH zones/:zone_identifier/settings/h2_prioritization


## Change Automatic Platform Optimization for WordPress setting

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Automatic Platform Optimization for WordPress serves your WordPress site from Cloudflare's edge network and caches third party fonts.

> PATCH zones/:zone_identifier/settings/automatic_platform_optimization
