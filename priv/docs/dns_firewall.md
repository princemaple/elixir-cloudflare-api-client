# DNS Firewall

## Create DNS Firewall Cluster

**POST** `/accounts/{account_id}/dns_firewall`

Create a DNS Firewall cluster


## List DNS Firewall Clusters

**GET** `/accounts/{account_id}/dns_firewall`

List DNS Firewall clusters for an account


## Update DNS Firewall Cluster

**PATCH** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}`

Modify the configuration of a DNS Firewall cluster


## DNS Firewall Cluster Details

**GET** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}`

Show a single DNS Firewall cluster for an account


## Delete DNS Firewall Cluster

**DELETE** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}`

Delete a DNS Firewall cluster


## Update DNS Firewall Cluster Reverse DNS

**PATCH** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`

Update reverse DNS configuration (PTR records) for a DNS Firewall cluster


## Show DNS Firewall Cluster Reverse DNS

**GET** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`

Show reverse DNS configuration (PTR records) for a DNS Firewall cluster

