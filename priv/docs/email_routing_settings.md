# Email Routing settings

## Get Email Routing settings

**GET** `/zones/{zone_id}/email/routing`

Get information about the settings for your Email Routing zone.


## Disable Email Routing

**POST** `/zones/{zone_id}/email/routing/disable`

Disable your Email Routing zone. Also removes additional MX records previously required for Email Routing to work.


## Enable Email Routing

**POST** `/zones/{zone_id}/email/routing/dns`

Enable you Email Routing zone. Add and lock the necessary MX and SPF records.


## Unlock Email Routing

**PATCH** `/zones/{zone_id}/email/routing/dns`

Unlock MX Records previously locked by Email Routing.


## Email Routing - DNS settings

**GET** `/zones/{zone_id}/email/routing/dns`

Show the DNS records needed to configure your Email Routing zone.


## Disable Email Routing

**DELETE** `/zones/{zone_id}/email/routing/dns`

Disable your Email Routing zone. Also removes additional MX records previously required for Email Routing to work.


## Enable Email Routing

**POST** `/zones/{zone_id}/email/routing/enable`

Enable you Email Routing zone. Add and lock the necessary MX and SPF records.

