# IP Address Management Dynamic Advertisement

Manage the desired advertisement state of your account's IP prefixes.

## Get Advertisement Status

`GET` List the current advertisement state for a prefix.

> GET accounts/:account_identifier/addressing/prefixes/:prefix_identifier/bgp/status

**Permission needed:** `None`

Available in:




## Update Prefix Dynamic Advertisement Status

`PATCH` Advertise or withdraw BGP route for a prefix.

> PATCH accounts/:account_identifier/addressing/prefixes/:prefix_identifier/bgp/status

**Permission needed:** `None`

Available in:



