## Upload a video from a URL

**Permission needed:** `None`

Available in:



`POST` Link to a video and it will be downloaded and made available on Stream.

> POST accounts/:account_identifier/stream/copy


## Upload a video using a single HTTP request

**Permission needed:** `None`

Available in:



`POST` You can upload a video up to 200 Megabytes using a single HTTP POST (multipart/form-data) request. For larger file sizes, please upload using the TUS protocol.

> POST accounts/:account_identifier/stream


## Create a video and get authenticated direct upload URL

**Permission needed:** `None`

Available in:



`POST` Direct uploads allow users to upload videos without API keys. A common place to use direct uploads is on web apps, client side applications, or on mobile devices where users upload content directly to Stream.

> POST accounts/:account_identifier/stream/direct_upload


## List videos

**Permission needed:** `None`

Available in:



`GET` Up to 1000 videos can be listed with one request, use optional parameters below to get a specific range of videos.Please note that Cloudflare Stream does not use pagination, instead it uses a cursor pattern to list more than 1000 videos. In order to list all videos, make multiple requests to the API using the created date-time of the last item in the previous request as the before or after parameter.

> GET accounts/:account_identifier/stream


## Initiate a Video Upload using TUS

**Permission needed:** `None`

Available in:



`POST` Initiate a video upload using the TUS protocol. On success, server will response with status code 201 (Created) and include a 'location' header indicating where the video content should be uploaded to. See https://tus.io for protocol details.

> POST accounts/:account_identifier/stream


## Video details

**Permission needed:** `None`

Available in:



`GET` Fetch details of a single video.

> GET accounts/:account_identifier/stream/:identifier


## Embed Code HTML

**Permission needed:** `None`

Available in:



`GET` Fetch an HTML code snippet that can be used to embed the video in a web page that is delivered through Cloudflare. On success returns an HTML fragment (not a full document) that can be included on a web page to display the video. On failure returns a JSON response body (see Error Response) above.

> GET accounts/:account_identifier/stream/:identifier/embed


## Delete video

**Permission needed:** `None`

Available in:



`DELETE` Delete a video on Cloudflare Stream. On success, all copies of the video are deleted.

> DELETE accounts/:account_identifier/stream/:identifier
