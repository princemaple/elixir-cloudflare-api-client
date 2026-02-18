# Zone Cache Settings

## Change Cache Reserve setting

**PATCH** `/zones/{zone_id}/cache/cache_reserve`

Increase cache lifetimes by automatically storing all cacheable files into Cloudflare's persistent object storage buckets. Requires Cache Reserve subscription. Note: using Tiered Cache with Cache Reserve is highly recommended to reduce Reserve operations costs. See the [developer docs](https://developers.cloudflare.com/cache/about/cache-reserve) for more information.


## Get Cache Reserve setting

**GET** `/zones/{zone_id}/cache/cache_reserve`

Increase cache lifetimes by automatically storing all cacheable files into Cloudflare's persistent object storage buckets. Requires Cache Reserve subscription. Note: using Tiered Cache with Cache Reserve is highly recommended to reduce Reserve operations costs. See the [developer docs](https://developers.cloudflare.com/cache/about/cache-reserve) for more information.


## Start Cache Reserve Clear

**POST** `/zones/{zone_id}/cache/cache_reserve_clear`

You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.


## Get Cache Reserve Clear

**GET** `/zones/{zone_id}/cache/cache_reserve_clear`

You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.


## Change Regional Tiered Cache setting

**PATCH** `/zones/{zone_id}/cache/regional_tiered_cache`

Instructs Cloudflare to check a regional hub data center on the way to your upper tier. This can help improve performance for smart and custom tiered cache topologies.


## Get Regional Tiered Cache setting

**GET** `/zones/{zone_id}/cache/regional_tiered_cache`

Instructs Cloudflare to check a regional hub data center on the way to your upper tier. This can help improve performance for smart and custom tiered cache topologies.


## Change variants setting

**PATCH** `/zones/{zone_id}/cache/variants`

Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.


## Get variants setting

**GET** `/zones/{zone_id}/cache/variants`

Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.


## Delete variants setting

**DELETE** `/zones/{zone_id}/cache/variants`

Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.

