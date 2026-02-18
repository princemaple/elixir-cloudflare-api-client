# Zaraz

## Update Zaraz configuration

**PUT** `/zones/{zone_id}/settings/zaraz/config`

Updates Zaraz configuration for a zone.


## Get Zaraz configuration

**GET** `/zones/{zone_id}/settings/zaraz/config`

Gets latest Zaraz configuration for a zone. It can be preview or published configuration, whichever was the last updated. Secret variables values will not be included.


## Get default Zaraz configuration

**GET** `/zones/{zone_id}/settings/zaraz/default`

Gets default Zaraz configuration for a zone.


## Export Zaraz configuration

**GET** `/zones/{zone_id}/settings/zaraz/export`

Exports full current published Zaraz configuration for a zone, secret variables included.


## Restore Zaraz historical configuration by ID

**PUT** `/zones/{zone_id}/settings/zaraz/history`

Restores a historical published Zaraz configuration by ID for a zone.


## List Zaraz historical configuration records

**GET** `/zones/{zone_id}/settings/zaraz/history`

Lists a history of published Zaraz configuration records for a zone.


## Get Zaraz historical configurations by ID(s)

**GET** `/zones/{zone_id}/settings/zaraz/history/configs`

Gets a history of published Zaraz configurations by ID(s) for a zone.


## Publish Zaraz preview configuration

**POST** `/zones/{zone_id}/settings/zaraz/publish`

Publish current Zaraz preview configuration for a zone.


## Update Zaraz workflow

**PUT** `/zones/{zone_id}/settings/zaraz/workflow`

Updates Zaraz workflow for a zone.


## Get Zaraz workflow

**GET** `/zones/{zone_id}/settings/zaraz/workflow`

Gets Zaraz workflow for a zone.

