# Cloudflare Tunnel

## Create a Cloudflare Tunnel

**POST** `/accounts/{account_id}/cfd_tunnel`

Creates a new Cloudflare Tunnel in an account.


## List Cloudflare Tunnels

**GET** `/accounts/{account_id}/cfd_tunnel`

Lists and filters Cloudflare Tunnels in an account.


## Update a Cloudflare Tunnel

**PATCH** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}`

Updates an existing Cloudflare Tunnel.


## Get a Cloudflare Tunnel

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}`

Fetches a single Cloudflare Tunnel.


## Delete a Cloudflare Tunnel

**DELETE** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}`

Deletes a Cloudflare Tunnel from an account.


## List Cloudflare Tunnel connections

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`

Fetches connection details for a Cloudflare Tunnel.


## Clean up Cloudflare Tunnel connections

**DELETE** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`

Removes a connection (aka Cloudflare Tunnel Connector) from a Cloudflare Tunnel independently of its current state. If no connector id (client_id) is provided all connectors will be removed. We recommend running this command after rotating tokens.


## Get Cloudflare Tunnel connector

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/connectors/{connector_id}`

Fetches connector and connection details for a Cloudflare Tunnel.


## Get a Cloudflare Tunnel management token

**POST** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/management`

Gets a management token used to access the management resources (i.e. Streaming Logs) of a tunnel.


## Get a Cloudflare Tunnel token

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/token`

Gets the token used to associate cloudflared with a specific tunnel.


## List All Tunnels

**GET** `/accounts/{account_id}/tunnels`

Lists and filters all types of Tunnels in an account.


## Create a Warp Connector Tunnel

**POST** `/accounts/{account_id}/warp_connector`

Creates a new Warp Connector Tunnel in an account.


## List Warp Connector Tunnels

**GET** `/accounts/{account_id}/warp_connector`

Lists and filters Warp Connector Tunnels in an account.


## Update a Warp Connector Tunnel

**PATCH** `/accounts/{account_id}/warp_connector/{tunnel_id}`

Updates an existing Warp Connector Tunnel.


## Get a Warp Connector Tunnel

**GET** `/accounts/{account_id}/warp_connector/{tunnel_id}`

Fetches a single Warp Connector Tunnel.


## Delete a Warp Connector Tunnel

**DELETE** `/accounts/{account_id}/warp_connector/{tunnel_id}`

Deletes a Warp Connector Tunnel from an account.


## Get a Warp Connector Tunnel token

**GET** `/accounts/{account_id}/warp_connector/{tunnel_id}/token`

Gets the token used to associate warp device with a specific Warp Connector tunnel.

