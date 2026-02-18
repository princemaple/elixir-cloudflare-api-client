# ppc_config

## Set can_be_enabled setting on zones

**PATCH** `/accounts/{account_id}/pay-per-crawl/zones_can_be_enabled`

Allows an account admin to set the can_be_enabled setting on a list of zones.


## Gets the can_be_enabled zone setting

**POST** `/accounts/{account_id}/pay-per-crawl/zones_can_be_enabled/query`

Provided a list of pay-per-crawl configured zones this method will return whether they can enable PPC or not.


## Creates pay-per-crawl config for a zone

**POST** `/zones/{zone_id}/pay-per-crawl/configuration`

Creates the pay-per-crawl config for a zone.


## Changes pay-per-crawl config for a zone

**PATCH** `/zones/{zone_id}/pay-per-crawl/configuration`

Changes the pay-per-crawl config for a zone.


## Get the pay-per-crawl config

**GET** `/zones/{zone_id}/pay-per-crawl/configuration`

Gets the pay-per-crawl config for a zone including the bot configuration.

