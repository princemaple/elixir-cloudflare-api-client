# Argo Tunnel

A tunnel that can route traffic to a user origin.

## List Argo Tunnels

`GET` List, search and filter an account's Argo Tunnels

> GET accounts/:account_identifier/tunnels

**Permission needed:** `None`

Available in:




## Create Argo Tunnel

`POST` Create an Argo Tunnel in an account.

> POST accounts/:account_identifier/tunnels

**Permission needed:** `None`

Available in:




## Get Argo Tunnel

`GET` Get the details of an Argo Tunnel from an account.

> GET accounts/:account_identifier/tunnels/:uuid

**Permission needed:** `None`

Available in:




## Delete Argo Tunnel

`DELETE` Delete an Argo Tunnel from an account.

> DELETE accounts/:account_identifier/tunnels/:uuid

**Permission needed:** `None`

Available in:




## Clean Up Argo Tunnel Connections

`DELETE` Remove stale connection resources from an Argo Tunnel

> DELETE accounts/:account_identifier/tunnels/:uuid/connections

**Permission needed:** `None`

Available in:



