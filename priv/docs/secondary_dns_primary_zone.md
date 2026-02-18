# Secondary DNS (Primary Zone)

## Update Primary Zone Configuration

**PUT** `/zones/{zone_id}/secondary_dns/outgoing`

Update primary zone configuration for outgoing zone transfers.


## Create Primary Zone Configuration

**POST** `/zones/{zone_id}/secondary_dns/outgoing`

Create primary zone configuration for outgoing zone transfers.


## Primary Zone Configuration Details

**GET** `/zones/{zone_id}/secondary_dns/outgoing`

Get primary zone configuration for outgoing zone transfers.


## Delete Primary Zone Configuration

**DELETE** `/zones/{zone_id}/secondary_dns/outgoing`

Delete primary zone configuration for outgoing zone transfers.


## Disable Outgoing Zone Transfers

**POST** `/zones/{zone_id}/secondary_dns/outgoing/disable`

Disable outgoing zone transfers for primary zone and clears IXFR backlog of primary zone.


## Enable Outgoing Zone Transfers

**POST** `/zones/{zone_id}/secondary_dns/outgoing/enable`

Enable outgoing zone transfers for primary zone.


## Force DNS NOTIFY

**POST** `/zones/{zone_id}/secondary_dns/outgoing/force_notify`

Notifies the secondary nameserver(s) and clears IXFR backlog of primary zone.


## Get Outgoing Zone Transfer Status

**GET** `/zones/{zone_id}/secondary_dns/outgoing/status`

Get primary zone transfer status.

