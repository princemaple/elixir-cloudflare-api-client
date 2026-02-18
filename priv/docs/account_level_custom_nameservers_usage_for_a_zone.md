# Account-Level Custom Nameservers Usage for a Zone

## Set Account Custom Nameserver Related Zone Metadata

**PUT** `/zones/{zone_id}/custom_ns`

Set metadata for account-level custom nameservers on a zone.

If you would like new zones in the account to use account custom nameservers by default, use PUT /accounts/:identifier to set the account setting use_account_custom_ns_by_default to true.

Deprecated in favor of [Update DNS Settings](https://developers.cloudflare.com/api/operations/dns-settings-for-a-zone-update-dns-settings).



## Get Account Custom Nameserver Related Zone Metadata

**GET** `/zones/{zone_id}/custom_ns`

Get metadata for account-level custom nameservers on a zone.

Deprecated in favor of [Show DNS Settings](https://developers.cloudflare.com/api/operations/dns-settings-for-a-zone-list-dns-settings).


