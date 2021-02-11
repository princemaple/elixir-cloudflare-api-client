# Audit Logs

A log of changes made to your Cloudflare account

## List User Audit Logs

`GET` Get audit logs for a user account, filter by who made the change, which zone was the change was made on, and the timeframe of the change

> GET user/audit_logs

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise


## List Account Audit Logs

`GET` Get audit logs for an account, filter by who made the change, which zone was the change was made on, and the timeframe of the change

> GET accounts/:account_identifier/audit_logs

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise


## List Organization Audit Logs

`GET` Get audit logs for an organization, filter by who made the change, which zone was the change was made on, and the timeframe of the change

> GET organizations/:organization_identifier/audit_logs

**Permission needed:** `None`

Available in:

* enterprise

