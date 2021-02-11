# Custom Hostname for a Zone

Manage hostnames for your zone that are routed via CNAME.

## List Custom Hostnames

`GET` List, search, sort, and filter all of your custom hostnames

> GET zones/:zone_identifier/custom_hostnames

**Permission needed:** `#ssl:read`

Available in:

* ENTERPRISE


## Create Custom Hostname

`POST` Add a new custom hostname and request that an SSL certificate be issued for it. One of three validation methods—http, txt, email—should be used, with 'http' recommended if the CNAME is already in place (or will be soon). Specifying 'email' will send an email to the WHOIS contacts on file for the base domain plus hostmaster, postmaster, webmaster, admin, administrator. If http is used and the domain is not already pointing to the Managed CNAME host, the PATCH method must be used once it is (to complete validation).

> POST zones/:zone_identifier/custom_hostnames

**Permission needed:** `#ssl:edit`

Available in:

* ENTERPRISE


## Custom Hostname Details

`GET` 

> GET zones/:zone_identifier/custom_hostnames/:identifier

**Permission needed:** `#ssl:read`

Available in:

* ENTERPRISE


## Edit Custom Hostname

`PATCH` Modify SSL configuration for a custom hostname. When sent with SSL config that matches existing config, used to indicate that hostname should pass domain control validation (DCV). Can also be used to change validation type, e.g., from 'http' to 'email'.

> PATCH zones/:zone_identifier/custom_hostnames/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* ENTERPRISE


## Delete Custom Hostname (and any issued SSL certificates)

`DELETE` 

> DELETE zones/:zone_identifier/custom_hostnames/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* ENTERPRISE

