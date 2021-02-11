# SSL Verification

SSL Verification for a Zone

## SSL Verification Details

`GET` Get SSL Verification Info for a Zone

> GET zones/:zone_identifier/ssl/verification

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise


## Edit SSL Certificate Pack Validation Method

`PATCH` Edit SSL validation method for a certificate pack. A PATCH request will request an immediate validation check on any certificate, and return the updated status. If a validation method is provided, the validation will be immediately attempted using that method.

> PATCH zones/:zone_identifier/ssl/verification/:cert_pack_uuid

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* free
* pro
* business
* enterprise

