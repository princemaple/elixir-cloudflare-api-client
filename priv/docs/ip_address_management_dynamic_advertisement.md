## IP Address Management Dynamic Advertisement

Manage the desired advertisement state of your account's IP prefixes.

### Get Advertisement Status

**Permission needed:** `None`

Available in:



`GET` List the current advertisement state for a prefix.

> GET accounts/:account_identifier/addressing/prefixes/:prefix_identifier/bgp/status


### Update Prefix Dynamic Advertisement Status

**Permission needed:** `None`

Available in:



`PATCH` Advertise or withdraw BGP route for a prefix.

> PATCH accounts/:account_identifier/addressing/prefixes/:prefix_identifier/bgp/status

