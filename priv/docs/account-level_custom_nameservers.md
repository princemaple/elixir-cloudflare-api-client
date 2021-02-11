# Account-Level Custom Nameservers

Configure custom nameservers that can be used by multiple zones in the account

## List Account Custom Nameservers

`GET` List an account's custom nameservers

> GET accounts/:identifier/custom_ns

**Permission needed:** `#dns_records:read#organization:read`

Available in:

* business
* enterprise


## Add Account Custom Nameserver

`POST` 

> POST accounts/:identifier/custom_ns

**Permission needed:** `#dns_records:edit#organization:edit`

Available in:

* business
* enterprise


## Verify Account Custom Nameserver Glue Records

`POST` 

> POST accounts/:identifier/custom_ns/verify

**Permission needed:** `#dns_records:edit#organization:edit`

Available in:

* business
* enterprise


## Delete Account Custom Nameserver

`DELETE` 

> DELETE accounts/:identifier/custom_ns/:ns_name

**Permission needed:** `#dns_records:edit#organization:edit`

Available in:

* business
* enterprise


## Get Eligible Zones for Account Custom Nameservers

`GET` 

> GET accounts/:identifier/custom_ns/availability

**Permission needed:** `#dns_records:read#organization:read`

Available in:

* business
* enterprise

