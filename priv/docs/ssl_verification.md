## SSL Verification Details

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Get SSL Verification Info for a Zone

> GET zones/:zone_identifier/ssl/verification


## Edit SSL Certificate Pack Validation Method

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Edit SSL validation method for a certificate pack. A PATCH request will request an immediate validation check on any certificate, and return the updated status. If a validation method is provided, the validation will be immediately attempted using that method.

> PATCH zones/:zone_identifier/ssl/verification/:cert_pack_uuid
