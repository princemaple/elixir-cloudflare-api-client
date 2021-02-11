## Account-Level Custom Nameservers

Configure custom nameservers that can be used by multiple zones in the account

### List Account Custom Nameservers

**Permission needed:** `#dns_records:read#organization:read`

Available in:

* business
* enterprise

`GET` List an account's custom nameservers

> GET accounts/:identifier/custom_ns


### Add Account Custom Nameserver

**Permission needed:** `#dns_records:edit#organization:edit`

Available in:

* business
* enterprise

`POST` 

> POST accounts/:identifier/custom_ns


### Verify Account Custom Nameserver Glue Records

**Permission needed:** `#dns_records:edit#organization:edit`

Available in:

* business
* enterprise

`POST` 

> POST accounts/:identifier/custom_ns/verify


### Delete Account Custom Nameserver

**Permission needed:** `#dns_records:edit#organization:edit`

Available in:

* business
* enterprise

`DELETE` 

> DELETE accounts/:identifier/custom_ns/:ns_name


### Get Eligible Zones for Account Custom Nameservers

**Permission needed:** `#dns_records:read#organization:read`

Available in:

* business
* enterprise

`GET` 

> GET accounts/:identifier/custom_ns/availability

