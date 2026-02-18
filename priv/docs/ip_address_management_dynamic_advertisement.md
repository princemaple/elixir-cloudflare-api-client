# IP Address Management Dynamic Advertisement

## Update Prefix Dynamic Advertisement Status

**PATCH** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/status`

Advertise or withdraw the BGP route for a prefix.

**Deprecated:** Prefer the BGP Prefixes endpoints, which additionally allow for advertising and withdrawing 
subnets of an IP prefix.



## Get Advertisement Status

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/status`

View the current advertisement state for a prefix.

**Deprecated:** Prefer the BGP Prefixes endpoints, which additionally allow for advertising and withdrawing 
subnets of an IP prefix.


