# Zone Settings

A Zone setting changes how the Zone works in relation to caching, security, or other features of Cloudflare

## Get all Zone settings

`GET` Available settings for your user in relation to a zone

> GET zones/:zone_identifier/settings

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Advanced DDOS setting

`GET` Advanced protection from Distributed Denial of Service (DDoS) attacks on your website. This is an uneditable value that is 'on' in the case of Business and Enterprise zones

> GET zones/:zone_identifier/settings/advanced_ddos

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise


## Get Always Online setting

`GET` When enabled, Always Online will serve pages from our cache if your server is offline (https://support.cloudflare.com/hc/en-us/articles/200168006)

> GET zones/:zone_identifier/settings/always_online

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Always Use HTTPS setting

`GET` Reply to all requests for URLs that use "http" with a 301 redirect to the equivalent "https" URL. If you only want to redirect for a subset of requests, consider creating an "Always use HTTPS" page rule.

> GET zones/:zone_identifier/settings/always_use_https

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Opportunistic Onion setting

`GET` Add an Alt-Svc header to all legitimate requests from Tor, allowing the connection to use our onion services instead of exit nodes.

> GET zones/:zone_identifier/settings/opportunistic_onion

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Orange to Orange (O2O)

`GET` Orange to Orange (O2O) allows zones on Cloudflare to CNAME to other zones also on Cloudflare.

> GET zones/:zone_identifier/settings/orange_to_orange

**Permission needed:** `#zone_settings:read`

Available in:

* enterprise


## Get Automatic HTTPS Rewrites setting

`GET` Enable the Automatic HTTPS Rewrites feature for this zone.

> GET zones/:zone_identifier/settings/automatic_https_rewrites

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Get Browser Cache TTL setting

`GET` Browser Cache TTL (in seconds) specifies how long Cloudflare-cached resources will remain on your visitors' computers. Cloudflare will honor any larger times specified by your server. (https://support.cloudflare.com/hc/en-us/articles/200168276)

> GET zones/:zone_identifier/settings/browser_cache_ttl

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Browser Check setting

`GET` Browser Integrity Check is similar to Bad Behavior and looks for common HTTP headers abused most commonly by spammers and denies access to your page.  It will also challenge visitors that do not have a user agent or a non standard user agent (also commonly used by abuse bots, crawlers or visitors). (https://support.cloudflare.com/hc/en-us/articles/200170086)

> GET zones/:zone_identifier/settings/browser_check

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Cache Level setting

`GET` Cache Level functions based off the setting level. The basic setting will cache most static resources (i.e., css, images, and JavaScript). The simplified setting will ignore the query string when delivering a cached resource. The aggressive setting will cache all static resources, including ones with a query string. (https://support.cloudflare.com/hc/en-us/articles/200168256)

> GET zones/:zone_identifier/settings/cache_level

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Challenge TTL setting

`GET` Specify how long a visitor is allowed access to your site after successfully completing a challenge (such as a CAPTCHA). After the TTL has expired the visitor will have to complete a new challenge. We recommend a 15 - 45 minute setting and will attempt to honor any setting above 45 minutes. (https://support.cloudflare.com/hc/en-us/articles/200170136)

> GET zones/:zone_identifier/settings/challenge_ttl

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Development Mode setting

`GET` Development Mode temporarily allows you to enter development mode for your websites if you need to make changes to your site. This will bypass Cloudflare's accelerated cache and slow down your site, but is useful if you are making changes to cacheable content (like images, css, or JavaScript) and would like to see those changes right away. Once entered, development mode will last for 3 hours and then automatically toggle off.

> GET zones/:zone_identifier/settings/development_mode

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Email Obfuscation setting

`GET` Encrypt email adresses on your web page from bots, while keeping them visible to humans. (https://support.cloudflare.com/hc/en-us/articles/200170016)

> GET zones/:zone_identifier/settings/email_obfuscation

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Hotlink Protection setting

`GET` When enabled, the Hotlink Protection option ensures that other sites cannot suck up your bandwidth by building pages that use images hosted on your site. Anytime a request for an image on your site hits Cloudflare, we check to ensure that it's not another site requesting them. People will still be able to download and view images from your page, but other sites won't be able to steal them for use on their own pages. (https://support.cloudflare.com/hc/en-us/articles/200170026)

> GET zones/:zone_identifier/settings/hotlink_protection

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get IP Geolocation setting

`GET` Enable IP Geolocation to have Cloudflare geolocate visitors to your website and pass the country code to you. (https://support.cloudflare.com/hc/en-us/articles/200168236)

> GET zones/:zone_identifier/settings/ip_geolocation

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get IPv6 setting

`GET` Enable IPv6 on all subdomains that are Cloudflare enabled.  (https://support.cloudflare.com/hc/en-us/articles/200168586)

> GET zones/:zone_identifier/settings/ipv6

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Minify setting

`GET` Automatically minify certain assets for your website (https://support.cloudflare.com/hc/en-us/articles/200168196).

> GET zones/:zone_identifier/settings/minify

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Mobile Redirect setting

`GET` Automatically redirect visitors on mobile devices to a mobile-optimized subdomain (https://support.cloudflare.com/hc/en-us/articles/200168336).

> GET zones/:zone_identifier/settings/mobile_redirect

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Mirage setting

`GET` Automatically optimize image loading for website visitors on mobile devices (http://blog.cloudflare.com/mirage2-solving-mobile-speed).

> GET zones/:zone_identifier/settings/mirage

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Enable Error Pages On setting

`GET` Cloudflare will proxy customer error pages on any 502,504 errors on origin server instead of showing a default Cloudflare error page. This does not apply to 522 errors and is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/origin_error_page_pass_thru

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Get Opportunistic Encryption setting

`GET` Enable the Opportunistic Encryption feature for this zone.

> GET zones/:zone_identifier/settings/opportunistic_encryption

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Get Polish setting

`GET` Strips metadata and compresses your images for faster page load times. Basic (Lossless): Reduce the size of PNG, JPEG, and GIF files - no impact on visual quality. Basic + JPEG (Lossy): Further reduce the size of JPEG files for faster image loading. Larger JPEGs are converted to progressive images, loading a lower-resolution image first and ending in a higher-resolution version. Not recommended for hi-res photography sites.

> GET zones/:zone_identifier/settings/polish

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get WebP setting

`GET` When the client requesting the image supports the WebP image codec, Cloudflare will serve a WebP version of the image when WebP offers a performance advantage over the original image format.

> GET zones/:zone_identifier/settings/webp

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Brotli setting

`GET` When the client requesting an asset supports the brotli compression algorithm, Cloudflare will serve a brotli compressed version of the asset.

> GET zones/:zone_identifier/settings/brotli

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Prefetch Preload setting

`GET` Cloudflare will prefetch any URLs that are included in the response headers. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/prefetch_preload

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Get Privacy Pass setting

`GET` Privacy Pass is a browser extension developed by the Privacy Pass Team to improve the browsing experience for your visitors. Enabling Privacy Pass will reduce the number of CAPTCHAs shown to your visitors. (https://support.cloudflare.com/hc/en-us/articles/115001992652-Privacy-Pass)

> GET zones/:zone_identifier/settings/privacy_pass

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Response Buffering setting

`GET` Enables or disables buffering of responses from the proxied server. Cloudflare may buffer the whole payload to deliver it at once to the client versus allowing it to be delivered in chunks. By default, the proxied server streams directly and is not buffered by Cloudflare. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/response_buffering

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Get Rocket Loader setting

`GET` Rocket Loader is a general-purpose asynchronous JavaScript optimisation which prioritises the rendering of your content while loading your site's Javascript asynchronously. Turning on Rocket Loader will immediately improve a web page's rendering time sometimes measured as Time to First Paint (TTFP) and also the window.onload time (assuming there is JavaScript on the page), which can have a positive impact on your Google search ranking. When turned on, Rocket Loader will automatically defer the loading of all Javascript referenced in your HTML, with no configuration required. (https://support.cloudflare.com/hc/en-us/articles/200168056)

> GET zones/:zone_identifier/settings/rocket_loader

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Security Header (HSTS) setting

`GET` Cloudflare security header for a zone.

> GET zones/:zone_identifier/settings/security_header

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Security Level setting

`GET` Choose the appropriate security profile for your website, which will automatically adjust each of the security settings. If you choose to customize an individual security setting, the profile will become Custom. (https://support.cloudflare.com/hc/en-us/articles/200170056)

> GET zones/:zone_identifier/settings/security_level

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Server Side Exclude setting

`GET` If there is sensitive content on your website that you want visible to real visitors, but that you want to hide from suspicious visitors, all you have to do is wrap the content with Cloudflare SSE tags. Wrap any content that you want to be excluded from suspicious visitors in the following SSE tags: <!--sse--><!--/sse-->. For example: <!--sse-->  Bad visitors won't see my phone number, 555-555-5555 <!--/sse-->. Note: SSE only will work with HTML. If you have HTML minification enabled, you won't see the SSE tags in your HTML source when it's served through Cloudflare. SSE will still function in this case, as Cloudflare's HTML minification and SSE functionality occur on-the-fly as the resource moves through our network to the visitor's computer. (https://support.cloudflare.com/hc/en-us/articles/200170036)

> GET zones/:zone_identifier/settings/server_side_exclude

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Enable Query String Sort setting

`GET` Cloudflare will treat files with the same query strings as the same file in cache, regardless of the order of the query strings. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/sort_query_string_for_cache

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Get SSL setting

`GET` SSL encrypts your visitor's connection and safeguards credit card numbers and other personal data to and from your website. SSL can take up to 5 minutes to fully activate. Requires Cloudflare active on your root domain or www domain. Off: no SSL between the visitor and Cloudflare, and no SSL between Cloudflare and your web server  (all HTTP traffic). Flexible: SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, but no SSL between Cloudflare and your web server. You don't need to have an SSL cert on your web server, but your vistors will still see the site as being HTTPS enabled. Full:  SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have your own SSL cert or self-signed cert at the very least. Full (Strict): SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have a valid SSL certificate installed on your web server. This certificate must be signed by a certificate authority, have an expiration date in the future, and respond for the request domain name (hostname). (https://support.cloudflare.com/hc/en-us/articles/200170416)

> GET zones/:zone_identifier/settings/ssl

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Minimum TLS Version setting

`GET` Only accept HTTPS requests that use at least the TLS protocol version specified. For example, if TLS 1.1 is selected, TLS 1.0 connections will be rejected, while 1.1, 1.2, and 1.3 (if enabled) will be permitted.

> GET zones/:zone_identifier/settings/min_tls_version

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Get Ciphers setting

`GET` An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.

> GET zones/:zone_identifier/settings/ciphers

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get TLS Client Auth setting

`GET` TLS Client Auth requires Cloudflare to connect to your origin server using a client certificate (Enterprise Only)

> GET zones/:zone_identifier/settings/tls_client_auth

**Permission needed:** `#zone_settings:read`

Available in:

* enterprise


## Get True Client IP setting

`GET` Allows customer to continue to use True Client IP (Akamai feature) in the headers we send to the origin. This is limited to Enterprise Zones.

> GET zones/:zone_identifier/settings/true_client_ip_header

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Get Web Application Firewall (WAF) setting

`GET` The WAF examines HTTP requests to your website.  It inspects both GET and POST requests and applies rules to help filter out illegitimate traffic from legitimate website visitors. The Cloudflare WAF inspects website addresses or URLs to detect anything out of the ordinary. If the Cloudflare WAF determines suspicious user behavior, then the WAF will 'challenge' the web visitor with a page that asks them to submit a CAPTCHA successfully  to continue their action. If the challenge is failed, the action will be stopped. What this means is that Cloudflare's WAF will block any traffic identified as illegitimate before it reaches your origin web server. (https://support.cloudflare.com/hc/en-us/articles/200172016)

> GET zones/:zone_identifier/settings/waf

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise


## Get HTTP2 setting

`GET` Value of the HTTP2 setting

> GET zones/:zone_identifier/settings/http2

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get HTTP3 setting

`GET` Value of the HTTP3 setting

> GET zones/:zone_identifier/settings/http3

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get 0-RTT session resumption setting

`GET` Value of the 0-RTT setting

> GET zones/:zone_identifier/settings/0rtt

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Pseudo IPv4 setting

`GET` Value of the Pseudo IPv4 setting

> GET zones/:zone_identifier/settings/pseudo_ipv4

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get WebSockets setting

`GET` WebSockets are open connections sustained between the client and the origin server. Inside a WebSockets connection, the client and the origin can pass data back and forth without having to reestablish sessions. This makes exchanging data within a WebSockets connection fast. WebSockets are often used for real-time applications such as live chat and gaming.  (https://support.cloudflare.com/hc/en-us/articles/200169466-Can-I-use-Cloudflare-with-WebSockets-)

> GET zones/:zone_identifier/settings/websockets

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Get Image Resizing setting

`GET` Image Resizing provides on-demand resizing, conversion and optimisation for images served through Cloudflare's network. (https://developers.cloudflare.com/images/)

> GET zones/:zone_identifier/settings/image_resizing

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise


## Get HTTP/2 Edge Prioritization setting

`GET` HTTP/2 Edge Prioritization optimises the delivery of resources served through HTTP/2 to improve page load performance. It also supports fine control of content delivery when used in conjunction with Workers.

> GET zones/:zone_identifier/settings/h2_prioritization

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise


## Get Automatic Platform Optimization for WordPress setting

`GET` Automatic Platform Optimization for WordPress serves your WordPress site from Cloudflare's edge network and caches third party fonts.

> GET zones/:zone_identifier/settings/automatic_platform_optimization

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Edit zone settings info

`PATCH` Edit settings for a zone

> PATCH zones/:zone_identifier/settings

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Always Online setting

`PATCH` When enabled, Always Online will serve pages from our cache if your server is offline (https://support.cloudflare.com/hc/en-us/articles/200168006)

> PATCH zones/:zone_identifier/settings/always_online

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Always Use HTTPS setting

`PATCH` Reply to all requests for URLs that use "http" with a 301 redirect to the equivalent "https" URL. If you only want to redirect for a subset of requests, consider creating an "Always use HTTPS" page rule.

> PATCH zones/:zone_identifier/settings/always_use_https

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Opportunistic Onion setting

`PATCH` Add an Alt-Svc header to all legitimate requests from Tor, allowing the connection to use our onion services instead of exit nodes.

> PATCH zones/:zone_identifier/settings/opportunistic_onion

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Orange to Orange (O2O)

`PATCH` Orange to Orange (O2O) allows zones on Cloudflare to CNAME to other zones also on Cloudflare.

> PATCH zones/:zone_identifier/settings/orange_to_orange

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change Automatic HTTPS Rewrites setting

`PATCH` Enable the Automatic HTTPS Rewrites feature for this zone.

> PATCH zones/:zone_identifier/settings/automatic_https_rewrites

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Browser Cache TTL setting

`PATCH` Browser Cache TTL (in seconds) specifies how long Cloudflare-cached resources will remain on your visitors' computers. Cloudflare will honor any larger times specified by your server. (https://support.cloudflare.com/hc/en-us/articles/200168276)

> PATCH zones/:zone_identifier/settings/browser_cache_ttl

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Browser Check setting

`PATCH` Browser Integrity Check is similar to Bad Behavior and looks for common HTTP headers abused most commonly by spammers and denies access to your page.  It will also challenge visitors that do not have a user agent or a non standard user agent (also commonly used by abuse bots, crawlers or visitors). (https://support.cloudflare.com/hc/en-us/articles/200170086)

> PATCH zones/:zone_identifier/settings/browser_check

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Cache Level setting

`PATCH` Cache Level functions based off the setting level. The basic setting will cache most static resources (i.e., css, images, and JavaScript). The simplified setting will ignore the query string when delivering a cached resource. The aggressive setting will cache all static resources, including ones with a query string. (https://support.cloudflare.com/hc/en-us/articles/200168256)

> PATCH zones/:zone_identifier/settings/cache_level

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Challenge TTL setting

`PATCH` Specify how long a visitor is allowed access to your site after successfully completing a challenge (such as a CAPTCHA). After the TTL has expired the visitor will have to complete a new challenge. We recommend a 15 - 45 minute setting and will attempt to honor any setting above 45 minutes. (https://support.cloudflare.com/hc/en-us/articles/200170136)

> PATCH zones/:zone_identifier/settings/challenge_ttl

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Development Mode setting

`PATCH` Development Mode temporarily allows you to enter development mode for your websites if you need to make changes to your site. This will bypass Cloudflare's accelerated cache and slow down your site, but is useful if you are making changes to cacheable content (like images, css, or JavaScript) and would like to see those changes right away. Once entered, development mode will last for 3 hours and then automatically toggle off.

> PATCH zones/:zone_identifier/settings/development_mode

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Email Obfuscation setting

`PATCH` Encrypt email adresses on your web page from bots, while keeping them visible to humans. (https://support.cloudflare.com/hc/en-us/articles/200170016)

> PATCH zones/:zone_identifier/settings/email_obfuscation

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Enable Error Pages On setting

`PATCH` Cloudflare will proxy customer error pages on any 502,504 errors on origin server instead of showing a default Cloudflare error page. This does not apply to 522 errors and is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/origin_error_page_pass_thru

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change Enable Query String Sort setting

`PATCH` Cloudflare will treat files with the same query strings as the same file in cache, regardless of the order of the query strings. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/sort_query_string_for_cache

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change Hotlink Protection setting

`PATCH` When enabled, the Hotlink Protection option ensures that other sites cannot suck up your bandwidth by building pages that use images hosted on your site. Anytime a request for an image on your site hits Cloudflare, we check to ensure that it's not another site requesting them. People will still be able to download and view images from your page, but other sites won't be able to steal them for use on their own pages. (https://support.cloudflare.com/hc/en-us/articles/200170026)

> PATCH zones/:zone_identifier/settings/hotlink_protection

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change IP Geolocation setting

`PATCH` Enable IP Geolocation to have Cloudflare geolocate visitors to your website and pass the country code to you. (https://support.cloudflare.com/hc/en-us/articles/200168236)

> PATCH zones/:zone_identifier/settings/ip_geolocation

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change IPv6 setting

`PATCH` Enable IPv6 on all subdomains that are Cloudflare enabled.  (https://support.cloudflare.com/hc/en-us/articles/200168586)

> PATCH zones/:zone_identifier/settings/ipv6

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change Minify setting

`PATCH` Automatically minify certain assets for your website (https://support.cloudflare.com/hc/en-us/articles/200168196).

> PATCH zones/:zone_identifier/settings/minify

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Mobile Redirect setting

`PATCH` Automatically redirect visitors on mobile devices to a mobile-optimized subdomain (https://support.cloudflare.com/hc/en-us/articles/200168336).

> PATCH zones/:zone_identifier/settings/mobile_redirect

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Mirage setting

`PATCH` Automatically optimize image loading for website visitors on mobile devices (http://blog.cloudflare.com/mirage2-solving-mobile-speed).

> PATCH zones/:zone_identifier/settings/mirage

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change Opportunistic Encryption setting

`PATCH` Enable the Opportunistic Encryption feature for this zone.

> PATCH zones/:zone_identifier/settings/opportunistic_encryption

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Polish setting

`PATCH` Strips metadata and compresses your images for faster page load times. Basic (Lossless): Reduce the size of PNG, JPEG, and GIF files - no impact on visual quality. Basic + JPEG (Lossy): Further reduce the size of JPEG files for faster image loading. Larger JPEGs are converted to progressive images, loading a lower-resolution image first and ending in a higher-resolution version. Not recommended for hi-res photography sites.

> PATCH zones/:zone_identifier/settings/polish

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change WebP setting

`PATCH` When the client requesting the image supports the WebP image codec, Cloudflare will serve a WebP version of the image when WebP offers a performance advantage over the original image format.

> PATCH zones/:zone_identifier/settings/webp

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change Brotli setting

`PATCH` When the client requesting an asset supports the brotli compression algorithm, Cloudflare will serve a brotli compressed version of the asset.

> PATCH zones/:zone_identifier/settings/brotli

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Prefetch Preload setting

`PATCH` Cloudflare will prefetch any URLs that are included in the response headers. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/prefetch_preload

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change Privacy Pass setting

`PATCH` Privacy Pass is a browser extension developed by the Privacy Pass Team to improve the browsing experience for your visitors. Enabling Privacy Pass will reduce the number of CAPTCHAs shown to your visitors. (https://support.cloudflare.com/hc/en-us/articles/115001992652-Privacy-Pass)

> PATCH zones/:zone_identifier/settings/privacy_pass

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Response Buffering setting

`PATCH` Enables or disables buffering of responses from the proxied server. Cloudflare may buffer the whole payload to deliver it at once to the client versus allowing it to be delivered in chunks. By default, the proxied server streams directly and is not buffered by Cloudflare. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/response_buffering

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change Rocket Loader setting

`PATCH` Rocket Loader is a general-purpose asynchronous JavaScript optimisation which prioritises the rendering of your content while loading your site's Javascript asynchronously. Turning on Rocket Loader will immediately improve a web page's rendering time sometimes measured as Time to First Paint (TTFP) and also the window.onload time (assuming there is JavaScript on the page), which can have a positive impact on your Google search ranking. When turned on, Rocket Loader will automatically defer the loading of all Javascript referenced in your HTML, with no configuration required. (https://support.cloudflare.com/hc/en-us/articles/200168056)

> PATCH zones/:zone_identifier/settings/rocket_loader

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Security Header (HSTS) setting

`PATCH` Cloudflare security header for a zone.

> PATCH zones/:zone_identifier/settings/security_header

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Security Level setting

`PATCH` Choose the appropriate security profile for your website, which will automatically adjust each of the security settings. If you choose to customize an individual security setting, the profile will become Custom. (https://support.cloudflare.com/hc/en-us/articles/200170056)

> PATCH zones/:zone_identifier/settings/security_level

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Server Side Exclude setting

`PATCH` If there is sensitive content on your website that you want visible to real visitors, but that you want to hide from suspicious visitors, all you have to do is wrap the content with Cloudflare SSE tags. Wrap any content that you want to be excluded from suspicious visitors in the following SSE tags: <!--sse--><!--/sse-->. For example: <!--sse-->  Bad visitors won't see my phone number, 555-555-5555 <!--/sse-->. Note: SSE only will work with HTML. If you have HTML minification enabled, you won't see the SSE tags in your HTML source when it's served through Cloudflare. SSE will still function in this case, as Cloudflare's HTML minification and SSE functionality occur on-the-fly as the resource moves through our network to the visitor's computer. (https://support.cloudflare.com/hc/en-us/articles/200170036)

> PATCH zones/:zone_identifier/settings/server_side_exclude

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change SSL setting

`PATCH` SSL encrypts your visitor's connection and safeguards credit card numbers and other personal data to and from your website. SSL can take up to 5 minutes to fully activate. Requires Cloudflare active on your root domain or www domain. Off: no SSL between the visitor and Cloudflare, and no SSL between Cloudflare and your web server  (all HTTP traffic). Flexible: SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, but no SSL between Cloudflare and your web server. You don't need to have an SSL cert on your web server, but your vistors will still see the site as being HTTPS enabled. Full:  SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have your own SSL cert or self-signed cert at the very least. Full (Strict): SSL between the visitor and Cloudflare -- visitor sees HTTPS on your site, and SSL between Cloudflare and your web server. You'll need to have a valid SSL certificate installed on your web server. This certificate must be signed by a certificate authority, have an expiration date in the future, and respond for the request domain name (hostname). (https://support.cloudflare.com/hc/en-us/articles/200170416)

> PATCH zones/:zone_identifier/settings/ssl

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change TLS Client Auth setting

`PATCH` TLS Client Auth requires Cloudflare to connect to your origin server using a client certificate (Enterprise Only)

> PATCH zones/:zone_identifier/settings/tls_client_auth

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change True Client IP setting

`PATCH` Allows customer to continue to use True Client IP (Akamai feature) in the headers we send to the origin. This is limited to Enterprise Zones.

> PATCH zones/:zone_identifier/settings/true_client_ip_header

**Permission needed:** `#zone_settings:edit`

Available in:

* enterprise


## Change Minimum TLS Version setting

`PATCH` Only accept HTTPS requests that use at least the TLS protocol version specified. For example, if TLS 1.1 is selected, TLS 1.0 connections will be rejected, while 1.1, 1.2, and 1.3 (if enabled) will be permitted.

> PATCH zones/:zone_identifier/settings/min_tls_version

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Ciphers setting

`PATCH` An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.

> PATCH zones/:zone_identifier/settings/ciphers

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Web Application Firewall (WAF) setting

`PATCH` The WAF examines HTTP requests to your website.  It inspects both GET and POST requests and applies rules to help filter out illegitimate traffic from legitimate website visitors. The Cloudflare WAF inspects website addresses or URLs to detect anything out of the ordinary. If the Cloudflare WAF determines suspicious user behavior, then the WAF will 'challenge' the web visitor with a page that asks them to submit a CAPTCHA successfully  to continue their action. If the challenge is failed, the action will be stopped. What this means is that Cloudflare's WAF will block any traffic identified as illegitimate before it reaches your origin web server. (https://support.cloudflare.com/hc/en-us/articles/200172016)

> PATCH zones/:zone_identifier/settings/waf

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change HTTP2 setting

`PATCH` Value of the HTTP2 setting

> PATCH zones/:zone_identifier/settings/http2

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change HTTP3 setting

`PATCH` Value of the HTTP3 setting

> PATCH zones/:zone_identifier/settings/http3

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change 0-RTT session resumption setting

`PATCH` Value of the 0-RTT setting

> PATCH zones/:zone_identifier/settings/0rtt

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change Pseudo IPv4 setting

`PATCH` Value of the Pseudo IPv4 setting

> PATCH zones/:zone_identifier/settings/pseudo_ipv4

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change WebSockets setting

`PATCH` WebSockets are open connections sustained between the client and the origin server. Inside a WebSockets connection, the client and the origin can pass data back and forth without having to reestablish sessions. This makes exchanging data within a WebSockets connection fast. WebSockets are often used for real-time applications such as live chat and gaming.  (https://support.cloudflare.com/hc/en-us/articles/200169466-Can-I-use-Cloudflare-with-WebSockets-)

> PATCH zones/:zone_identifier/settings/websockets

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Change Image Resizing setting

`PATCH` Image Resizing provides on-demand resizing, conversion and optimisation for images served through Cloudflare's network. (https://developers.cloudflare.com/images/)

> PATCH zones/:zone_identifier/settings/image_resizing

**Permission needed:** `#zone_settings:edit`

Available in:

* business
* enterprise


## Change HTTP/2 Edge Prioritization setting

`PATCH` HTTP/2 Edge Prioritization optimises the delivery of resources served through HTTP/2 to improve page load performance. It also supports fine control of content delivery when used in conjunction with Workers.

> PATCH zones/:zone_identifier/settings/h2_prioritization

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise


## Change Automatic Platform Optimization for WordPress setting

`PATCH` Automatic Platform Optimization for WordPress serves your WordPress site from Cloudflare's edge network and caches third party fonts.

> PATCH zones/:zone_identifier/settings/automatic_platform_optimization

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

