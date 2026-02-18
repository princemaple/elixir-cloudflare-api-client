# Tiered Caching

## Patch Tiered Caching setting

**PATCH** `/zones/{zone_id}/argo/tiered_caching`

Tiered Cache works by dividing Cloudflare's data centers into a hierarchy of lower-tiers and upper-tiers. If content is not cached in lower-tier data centers (generally the ones closest to a visitor), the lower-tier must ask an upper-tier to see if it has the content. If the upper-tier does not have the content, only the upper-tier can ask the origin for content. This practice improves bandwidth efficiency by limiting the number of data centers that can ask the origin for content, which reduces origin load and makes websites more cost-effective to operate. Additionally, Tiered Cache concentrates connections to origin servers so they come from a small number of data centers rather than the full set of network locations. This results in fewer open connections using server resources.

### Responses

#### 200 Patch Tiered Caching setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Patch Tiered Caching setting response failure.

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



## Get Tiered Caching setting

**GET** `/zones/{zone_id}/argo/tiered_caching`

Tiered Cache works by dividing Cloudflare's data centers into a hierarchy of lower-tiers and upper-tiers. If content is not cached in lower-tier data centers (generally the ones closest to a visitor), the lower-tier must ask an upper-tier to see if it has the content. If the upper-tier does not have the content, only the upper-tier can ask the origin for content. This practice improves bandwidth efficiency by limiting the number of data centers that can ask the origin for content, which reduces origin load and makes websites more cost-effective to operate. Additionally, Tiered Cache concentrates connections to origin servers so they come from a small number of data centers rather than the full set of network locations. This results in fewer open connections using server resources.

### Responses

#### 200 Get Tiered Caching setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Tiered Caching setting response failure.

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


