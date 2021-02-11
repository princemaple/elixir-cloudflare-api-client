## List User Audit Logs

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Get audit logs for a user account, filter by who made the change, which zone was the change was made on, and the timeframe of the change

> GET user/audit_logs


## List Account Audit Logs

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Get audit logs for an account, filter by who made the change, which zone was the change was made on, and the timeframe of the change

> GET accounts/:account_identifier/audit_logs


## List Organization Audit Logs

**Permission needed:** `None`

Available in:

* enterprise

`GET` Get audit logs for an organization, filter by who made the change, which zone was the change was made on, and the timeframe of the change

> GET organizations/:organization_identifier/audit_logs
