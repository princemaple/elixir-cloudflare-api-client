# Zero Trust Subnets

## List Subnets

**GET** `/accounts/{account_id}/zerotrust/subnets`

Lists and filters subnets in an account.


## Update Cloudflare Source Subnet

**PATCH** `/accounts/{account_id}/zerotrust/subnets/cloudflare_source/{address_family}`

Updates the Cloudflare Source subnet of the given address family


## Create WARP IP subnet

**POST** `/accounts/{account_id}/zerotrust/subnets/warp`

Create a WARP IP assignment subnet. Currently, only IPv4 subnets can be created.

**Network constraints:**
- The network must be within one of the following private IP ranges:
  - `10.0.0.0/8` (RFC 1918)
  - `172.16.0.0/12` (RFC 1918)
  - `192.168.0.0/16` (RFC 1918)
  - `100.64.0.0/10` (RFC 6598 - CGNAT)
- The subnet must have a prefix length of `/24` or larger (e.g., `/16`, `/20`, `/24` are valid; `/25`, `/28` are not)



## Update WARP IP subnet

**PATCH** `/accounts/{account_id}/zerotrust/subnets/warp/{subnet_id}`

Updates a WARP IP assignment subnet.

**Update constraints:**
- The `network` field cannot be modified for WARP subnets. Only `name`, `comment`, and `is_default_network` can be updated.
- IPv6 subnets cannot be updated



## Get WARP IP subnet

**GET** `/accounts/{account_id}/zerotrust/subnets/warp/{subnet_id}`

Get a WARP IP assignment subnet.


## Delete WARP IP subnet

**DELETE** `/accounts/{account_id}/zerotrust/subnets/warp/{subnet_id}`

Delete a WARP IP assignment subnet. This operation is idempotent - deleting an already-deleted or non-existent subnet will return success with a null result.

