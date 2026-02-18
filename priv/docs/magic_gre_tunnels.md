# Magic GRE tunnels

## Update multiple GRE tunnels

**PUT** `/accounts/{account_id}/magic/gre_tunnels`

Updates multiple GRE tunnels. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## Create a GRE tunnel

**POST** `/accounts/{account_id}/magic/gre_tunnels`

Creates a new GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## List GRE tunnels

**GET** `/accounts/{account_id}/magic/gre_tunnels`

Lists GRE tunnels associated with an account.


## Update GRE Tunnel

**PUT** `/accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`

Updates a specific GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.


## List GRE Tunnel Details

**GET** `/accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`

Lists informtion for a specific GRE tunnel.


## Delete GRE Tunnel

**DELETE** `/accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`

Disables and removes a specific static GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.

