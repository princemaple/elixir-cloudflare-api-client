## Stream Watermark Profile

You can create watermark profile for different videos.

### Create a Watermark Profile from an URL

**Permission needed:** `None`

Available in:



`POST` You can create a watermark profile by specifying the URL to the image.

> POST accounts/:account_identifier/stream/watermarks


### Create a Watermark Profile via Basic Upload

**Permission needed:** `None`

Available in:



`POST` You can create a watermark profile using a single HTTP POST (multipart/form-data) request.

> POST accounts/:account_identifier/stream/watermarks


### List Watermark Profiles

**Permission needed:** `None`

Available in:



`GET` List all the watermark profiles under your account.

> GET accounts/:account_identifier/stream/watermarks


### Watermark Profile Details

**Permission needed:** `None`

Available in:



`GET` Fetch details of a single watermark profile.

> GET accounts/:account_identifier/stream/watermarks/:identifier


### Delete Watermark Profile

**Permission needed:** `None`

Available in:



`DELETE` Mark a watermark profile as deleted

> DELETE accounts/:account_identifier/stream/watermarks/:identifier

