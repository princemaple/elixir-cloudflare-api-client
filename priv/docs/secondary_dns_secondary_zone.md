# Secondary DNS (Secondary Zone)

## Force AXFR

**POST** `/zones/{zone_id}/secondary_dns/force_axfr`

Sends AXFR zone transfer request to primary nameserver(s).


## Update Secondary Zone Configuration

**PUT** `/zones/{zone_id}/secondary_dns/incoming`

Update secondary zone configuration for incoming zone transfers.


## Create Secondary Zone Configuration

**POST** `/zones/{zone_id}/secondary_dns/incoming`

Create secondary zone configuration for incoming zone transfers.


## Secondary Zone Configuration Details

**GET** `/zones/{zone_id}/secondary_dns/incoming`

Get secondary zone configuration for incoming zone transfers.


## Delete Secondary Zone Configuration

**DELETE** `/zones/{zone_id}/secondary_dns/incoming`

Delete secondary zone configuration for incoming zone transfers.

