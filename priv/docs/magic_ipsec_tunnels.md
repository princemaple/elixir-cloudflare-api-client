# Magic IPsec tunnels

## Update multiple IPsec tunnels

**PUT** `/accounts/{account_id}/magic/ipsec_tunnels`

Update multiple IPsec tunnels associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## Create an IPsec tunnel

**POST** `/accounts/{account_id}/magic/ipsec_tunnels`

Creates a new IPsec tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## List IPsec tunnels

**GET** `/accounts/{account_id}/magic/ipsec_tunnels`

Lists IPsec tunnels associated with an account.


## Update IPsec Tunnel

**PUT** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`

Updates a specific IPsec tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## List IPsec tunnel details

**GET** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`

Lists details for a specific IPsec tunnel.


## Delete IPsec Tunnel

**DELETE** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`

Disables and removes a specific static IPsec Tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## Generate Pre Shared Key (PSK) for IPsec tunnels

**POST** `/accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}/psk_generate`

Generates a Pre Shared Key for a specific IPsec tunnel used in the IKE session. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes. After a PSK is generated, the PSK is immediately persisted to Cloudflare's edge and cannot be retrieved later. Note the PSK in a safe place.

