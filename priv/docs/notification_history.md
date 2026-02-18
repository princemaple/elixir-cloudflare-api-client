# Notification History

## List History

**GET** `/accounts/{account_id}/alerting/v3/history`

Gets a list of history records for notifications sent to an account. The records are displayed for last `x` number of days based on the zone plan (free = 30, pro = 30, biz = 30, ent = 90).

