# Stream Watermark Profile

You can create watermark profile for different videos.

## Create a Watermark Profile from an URL

`POST` You can create a watermark profile by specifying the URL to the image.

> POST accounts/:account_identifier/stream/watermarks

**Permission needed:** `None`

Available in:




## Create a Watermark Profile via Basic Upload

`POST` You can create a watermark profile using a single HTTP POST (multipart/form-data) request.

> POST accounts/:account_identifier/stream/watermarks

**Permission needed:** `None`

Available in:




## List Watermark Profiles

`GET` List all the watermark profiles under your account.

> GET accounts/:account_identifier/stream/watermarks

**Permission needed:** `None`

Available in:




## Watermark Profile Details

`GET` Fetch details of a single watermark profile.

> GET accounts/:account_identifier/stream/watermarks/:identifier

**Permission needed:** `None`

Available in:




## Delete Watermark Profile

`DELETE` Mark a watermark profile as deleted

> DELETE accounts/:account_identifier/stream/watermarks/:identifier

**Permission needed:** `None`

Available in:



