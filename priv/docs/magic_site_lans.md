# Magic Site LANs

## Create a new Site LAN

**POST** `/accounts/{account_id}/magic/sites/{site_id}/lans`

Creates a new Site LAN. If the site is in high availability mode, static_addressing is required along with secondary and virtual address.


## List Site LANs

**GET** `/accounts/{account_id}/magic/sites/{site_id}/lans`

Lists Site LANs associated with an account.


## Update Site LAN

**PUT** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Update a specific Site LAN.


## Patch Site LAN

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Patch a specific Site LAN.


## Site LAN Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Get a specific Site LAN.


## Delete Site LAN

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`

Remove a specific Site LAN.

