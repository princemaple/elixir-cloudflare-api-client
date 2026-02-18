# Smart Tiered Cache

## Patch Smart Tiered Cache setting

**PATCH** `/zones/{zone_id}/cache/tiered_cache_smart_topology_enable`

Smart Tiered Cache dynamically selects the single closest upper tier for each of your website’s origins with no configuration required, using our in-house performance and routing data. Cloudflare collects latency data for each request to an origin, and uses the latency data to determine how well any upper-tier data center is connected with an origin. As a result, Cloudflare can select the data center with the lowest latency to be the upper-tier for an origin.

### Responses

#### 200 Patch Smart Tiered Cache setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Patch Smart Tiered Cache setting response failure.

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



## Get Smart Tiered Cache setting

**GET** `/zones/{zone_id}/cache/tiered_cache_smart_topology_enable`

Smart Tiered Cache dynamically selects the single closest upper tier for each of your website’s origins with no configuration required, using our in-house performance and routing data. Cloudflare collects latency data for each request to an origin, and uses the latency data to determine how well any upper-tier data center is connected with an origin. As a result, Cloudflare can select the data center with the lowest latency to be the upper-tier for an origin.

### Responses

#### 200 Get Smart Tiered Cache setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Smart Tiered Cache setting response failure.

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



## Delete Smart Tiered Cache setting

**DELETE** `/zones/{zone_id}/cache/tiered_cache_smart_topology_enable`

Smart Tiered Cache dynamically selects the single closest upper tier for each of your website’s origins with no configuration required, using our in-house performance and routing data. Cloudflare collects latency data for each request to an origin, and uses the latency data to determine how well any upper-tier data center is connected with an origin. As a result, Cloudflare can select the data center with the lowest latency to be the upper-tier for an origin.

### Responses

#### 200 Delete Smart Tiered Cache setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Delete Smart Tiered Cache setting response failure.

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


