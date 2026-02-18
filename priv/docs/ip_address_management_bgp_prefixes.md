# IP Address Management BGP Prefixes

## Create BGP Prefix

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes`

Create a BGP prefix, controlling the BGP advertisement status of a specific subnet. When created, BGP prefixes are initially withdrawn, and can be advertised with the Update BGP Prefix API.


## List BGP Prefixes

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes`

List all BGP Prefixes within the specified IP Prefix. BGP Prefixes are used to control which specific subnets are advertised to the Internet. It is possible to advertise subnets more specific than an IP Prefix by creating more specific BGP Prefixes.


## Update BGP Prefix

**PATCH** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`

Update the properties of a BGP Prefix, such as the on demand advertisement status (advertised or withdrawn).


## Fetch BGP Prefix

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`

Retrieve a single BGP Prefix according to its identifier


## Delete BGP Prefix

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`

Delete a BGP Prefix associated with the specified IP Prefix. A BGP Prefix must be withdrawn before it can be deleted.

