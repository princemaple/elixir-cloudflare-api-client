# Zero Trust SSH Settings

## Update Zero Trust SSH settings

**PUT** `/accounts/{account_id}/gateway/audit_ssh_settings`

Update Zero Trust Audit SSH and SSH with Access for Infrastructure settings for an account.


## Get Zero Trust SSH settings

**GET** `/accounts/{account_id}/gateway/audit_ssh_settings`

Retrieve all Zero Trust Audit SSH and SSH with Access for Infrastructure settings for an account.


## Rotate Zero Trust SSH account seed

**POST** `/accounts/{account_id}/gateway/audit_ssh_settings/rotate_seed`

Rotate the SSH account seed that generates the host key identity when connecting through the Cloudflare SSH Proxy.

