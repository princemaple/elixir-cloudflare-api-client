# Stream Watermark Profile

## Create watermark profiles via basic upload

**POST** `/accounts/{account_id}/stream/watermarks`

Creates watermark profiles using a single `HTTP POST multipart/form-data` request.


## List watermark profiles

**GET** `/accounts/{account_id}/stream/watermarks`

Lists all watermark profiles for an account.


## Watermark profile details

**GET** `/accounts/{account_id}/stream/watermarks/{identifier}`

Retrieves details for a single watermark profile.


## Delete watermark profiles

**DELETE** `/accounts/{account_id}/stream/watermarks/{identifier}`

Deletes a watermark profile.

