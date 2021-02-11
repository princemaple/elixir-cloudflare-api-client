# DNS Firewall

Account-level DNS Firewall Management

## List DNS Firewall Clusters

`GET` List configured DNS Firewall clusters for an account

> GET accounts/:account_identifier/virtual_dns

**Permission needed:** `#dns_records:read`

Available in:

* enterprise


## DNS Firewall Cluster Details

`GET` List a single configured DNS Firewall clusters for an account

> GET accounts/:account_identifier/virtual_dns/:identifier

**Permission needed:** `#dns_records:read`

Available in:

* enterprise


## Update DNS Firewall Cluster

`PUT` Modify a DNS Firewall Cluster configuration

> PUT accounts/:account_identifier/virtual_dns/:identifier

**Permission needed:** `#dns_records:edit`

Available in:

* enterprise


## Delete DNS Firewall Cluster

`DELETE` Delete a configured DNS Firewall Cluster

> DELETE accounts/:account_identifier/virtual_dns/:identifier

**Permission needed:** `#dns_records:edit`

Available in:

* enterprise


## Create DNS Firewall Cluster

`POST` Create a configured DNS Firewall Cluster

> POST accounts/:account_identifier/virtual_dns

**Permission needed:** `#dns_records:edit`

Available in:

* enterprise

