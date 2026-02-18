# Automatic SSL/TLS

## Patch Automatic SSL/TLS Enrollment status for given zone

**PATCH** `/zones/{zone_id}/settings/ssl_automatic_mode`

The automatic system is enabled when this endpoint is hit with value in the request body is set to "auto", and disabled when the request body value is set to "custom".


## Get Automatic SSL/TLS enrollment status for the given zone

**GET** `/zones/{zone_id}/settings/ssl_automatic_mode`

If the system is enabled, the response will include next_scheduled_scan, representing the next time this zone will be scanned and the zone's ssl/tls encryption mode is potentially upgraded by the system. If the system is disabled, next_scheduled_scan will not be present in the response body.

