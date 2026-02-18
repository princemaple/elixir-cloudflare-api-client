# Email Routing settings

## Get Email Routing settings

**GET** `/zones/{zone_id}/email/routing`

Get information about the settings for your Email Routing zone.

### Responses

#### 200 Get Email Routing settings response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "skip_wizard": "*boolean*",
  "status": "*string*",
  "tag": "*string*"
}
```



## Disable Email Routing

**POST** `/zones/{zone_id}/email/routing/disable`

Disable your Email Routing zone. Also removes additional MX records previously required for Email Routing to work.

### Responses

#### 200 Disable Email Routing response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "skip_wizard": "*boolean*",
  "status": "*string*",
  "tag": "*string*"
}
```



## Enable Email Routing

**POST** `/zones/{zone_id}/email/routing/dns`

Enable you Email Routing zone. Add and lock the necessary MX and SPF records.

### Responses

#### 200 Enable Email Routing response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "skip_wizard": "*boolean*",
  "status": "*string*",
  "tag": "*string*"
}
```



## Unlock Email Routing

**PATCH** `/zones/{zone_id}/email/routing/dns`

Unlock MX Records previously locked by Email Routing.

### Responses

#### 200 Unlock Email Routing MX records

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "skip_wizard": "*boolean*",
  "status": "*string*",
  "tag": "*string*"
}
```



## Email Routing - DNS settings

**GET** `/zones/{zone_id}/email/routing/dns`

Show the DNS records needed to configure your Email Routing zone.

### Responses

#### 200 Email Routing - DNS settings response

> Data is at `body["result"]`

```json
null
```



## Disable Email Routing

**DELETE** `/zones/{zone_id}/email/routing/dns`

Disable your Email Routing zone. Also removes additional MX records previously required for Email Routing to work.

### Responses

#### 200 Disable Email Routing response

> Data is at `body["result"]`

```json
null
```



## Enable Email Routing

**POST** `/zones/{zone_id}/email/routing/enable`

Enable you Email Routing zone. Add and lock the necessary MX and SPF records.

### Responses

#### 200 Enable Email Routing response

> Data is at `body["result"]`

```json
{
  "created": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified": "*string*",
  "name": "*string*",
  "skip_wizard": "*boolean*",
  "status": "*string*",
  "tag": "*string*"
}
```


