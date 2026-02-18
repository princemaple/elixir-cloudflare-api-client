# SSL Verification

## SSL Verification Details

**GET** `/zones/{zone_id}/ssl/verification`

Get SSL Verification Info for a Zone.


## Edit SSL Certificate Pack Validation Method

**PATCH** `/zones/{zone_id}/ssl/verification/{certificate_pack_id}`

Edit SSL validation method for a certificate pack. A PATCH request will request an immediate validation check on any certificate, and return the updated status. If a validation method is provided, the validation will be immediately attempted using that method.

