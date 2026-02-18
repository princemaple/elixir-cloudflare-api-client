# Origin Post-Quantum

## Change Origin Post-Quantum Encryption setting

**PUT** `/zones/{zone_id}/cache/origin_post_quantum_encryption`

Instructs Cloudflare to use Post-Quantum (PQ) key agreement algorithms when connecting to your origin. Preferred instructs Cloudflare to opportunistically send a Post-Quantum keyshare in the first message to the origin (for fastest connections when the origin supports and prefers PQ), supported means that PQ algorithms are advertised but only used when requested by the origin, and off means that PQ algorithms are not advertised.

### Responses

#### 200 Change Origin Post-Quantum Encryption setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Change Origin Post-Quantum Encryption setting response failure.

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



## Get Origin Post-Quantum Encryption setting

**GET** `/zones/{zone_id}/cache/origin_post_quantum_encryption`

Instructs Cloudflare to use Post-Quantum (PQ) key agreement algorithms when connecting to your origin. Preferred instructs Cloudflare to opportunistically send a Post-Quantum keyshare in the first message to the origin (for fastest connections when the origin supports and prefers PQ), supported means that PQ algorithms are advertised but only used when requested by the origin, and off means that PQ algorithms are not advertised.

### Responses

#### 200 Get Origin Post-Quantum Encryption setting response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Origin Post-Quantum Encryption setting response failure.

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


