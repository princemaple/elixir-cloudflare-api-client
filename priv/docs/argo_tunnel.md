## List Argo Tunnels

**Permission needed:** `None`

Available in:



`GET` List, search and filter an account's Argo Tunnels

> GET accounts/:account_identifier/tunnels


## Create Argo Tunnel

**Permission needed:** `None`

Available in:



`POST` Create an Argo Tunnel in an account.

> POST accounts/:account_identifier/tunnels


## Get Argo Tunnel

**Permission needed:** `None`

Available in:



`GET` Get the details of an Argo Tunnel from an account.

> GET accounts/:account_identifier/tunnels/:uuid


## Delete Argo Tunnel

**Permission needed:** `None`

Available in:



`DELETE` Delete an Argo Tunnel from an account.

> DELETE accounts/:account_identifier/tunnels/:uuid


## Clean Up Argo Tunnel Connections

**Permission needed:** `None`

Available in:



`DELETE` Remove stale connection resources from an Argo Tunnel

> DELETE accounts/:account_identifier/tunnels/:uuid/connections
