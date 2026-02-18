# Audit Logs

## Get account audit logs

**GET** `/accounts/{account_id}/audit_logs`

Gets a list of audit logs for an account. Can be filtered by who made the change, on which zone, and the timeframe of the change.


## Get account audit logs (Version 2, Beta release)

**GET** `/accounts/{account_id}/logs/audit`

Gets a list of audit logs for an account. <br />  <br /> This is the beta release of Audit Logs Version 2. Since this is a beta version, there may be gaps or missing entries in the available audit logs. Be aware of the following limitations.  <br /> <ul> <li>Audit logs are available only for the past 30 days. <br /></li> <li>Error handling is not yet implemented.  <br /> </li> </ul>


## Get user audit logs

**GET** `/user/audit_logs`

Gets a list of audit logs for a user account. Can be filtered by who made the change, on which zone, and the timeframe of the change.

