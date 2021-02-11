## Get log retention flag

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`GET` Get log retention flag for Logpull API

> GET zones/:zone_identifier/logs/control/retention/flag


## Update log retention flag

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`POST` Update log retention flag for Logpull API

> POST zones/:zone_identifier/logs/control/retention/flag


## Logs Received

**Permission needed:** `#logs:read`

Available in:

* enterprise

`GET` The /received api route allows customers to retrieve their edge http logs. The basic access pattern is "give me all the logs for zone Z for minute M" where the minute M refers to the time records were received at Cloudflare's central data center. start is inclusive, and end is exclusive. Because of that, to get all data, at minutely cadence, starting at 10AM, the proper values are: start=2018-05-20T10:00:00Z&end=2018-05-20T10:01:00Z, then start=2018-05-20T10:01:00Z&end=2018-05-20T10:02:00Z and so on; the "overlap" will be handled properly.

> GET zones/:zone_identifier/logs/received


## Logs RayIDs

**Permission needed:** `#logs:read`

Available in:

* enterprise

`GET` The /rayids api route allows lookups by specific rayid. The rayids route will return 0, 1, or more records (ray ids are not unique).

> GET zones/:zone_identifier/logs/rayids/:ray_identifier


## Fields

**Permission needed:** `#logs:read`

Available in:

* enterprise

`GET` The list of all fields available. The response is json object with key-value pairs where keys are field names, and values are descriptions.

> GET zones/:zone_identifier/logs/received/fields
