# DLS Regional Services

## List Regions

**GET** `/accounts/{account_id}/addressing/regional_hostnames/regions`

List all Regional Services regions available for use by this account.


## Create Regional Hostname

**POST** `/zones/{zone_id}/addressing/regional_hostnames`

Create a new Regional Hostname entry. Cloudflare will only use data centers that are physically located within the chosen region to decrypt and service HTTPS traffic. Learn more about [Regional Services](https://developers.cloudflare.com/data-localization/regional-services/get-started/).


## List Regional Hostnames

**GET** `/zones/{zone_id}/addressing/regional_hostnames`

List all Regional Hostnames within a zone.


## Update Regional Hostname

**PATCH** `/zones/{zone_id}/addressing/regional_hostnames/{hostname}`

Update the configuration for a specific Regional Hostname. Only the region_key of a hostname is mutable.


## Fetch Regional Hostname

**GET** `/zones/{zone_id}/addressing/regional_hostnames/{hostname}`

Fetch the configuration for a specific Regional Hostname, within a zone.


## Delete Regional Hostname

**DELETE** `/zones/{zone_id}/addressing/regional_hostnames/{hostname}`

Delete the region configuration for a specific Regional Hostname.

