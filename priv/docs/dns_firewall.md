## List DNS Firewall Clusters

**Permission needed:** `#dns_records:read`

Available in:

* enterprise

`GET` List configured DNS Firewall clusters for an account

> GET accounts/:account_identifier/virtual_dns


## DNS Firewall Cluster Details

**Permission needed:** `#dns_records:read`

Available in:

* enterprise

`GET` List a single configured DNS Firewall clusters for an account

> GET accounts/:account_identifier/virtual_dns/:identifier


## Update DNS Firewall Cluster

**Permission needed:** `#dns_records:edit`

Available in:

* enterprise

`PUT` Modify a DNS Firewall Cluster configuration

> PUT accounts/:account_identifier/virtual_dns/:identifier


## Delete DNS Firewall Cluster

**Permission needed:** `#dns_records:edit`

Available in:

* enterprise

`DELETE` Delete a configured DNS Firewall Cluster

> DELETE accounts/:account_identifier/virtual_dns/:identifier


## Create DNS Firewall Cluster

**Permission needed:** `#dns_records:edit`

Available in:

* enterprise

`POST` Create a configured DNS Firewall Cluster

> POST accounts/:account_identifier/virtual_dns
