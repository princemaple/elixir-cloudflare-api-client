# Stream Videos

## Initiate video uploads using TUS

**POST** `/accounts/{account_id}/stream`

Initiates a video upload using the TUS protocol. On success, the server responds with a status code 201 (created) and includes a `location` header to indicate where the content should be uploaded. Refer to https://tus.io for protocol details.


## List videos

**GET** `/accounts/{account_id}/stream`

Lists up to 1000 videos from a single request. For a specific range, refer to the optional parameters.


## Upload videos from a URL

**POST** `/accounts/{account_id}/stream/copy`

Uploads a video to Stream from a provided URL.


## Upload videos via direct upload URLs

**POST** `/accounts/{account_id}/stream/direct_upload`

Creates a direct upload that allows video uploads without an API key.


## Storage use

**GET** `/accounts/{account_id}/stream/storage-usage`

Returns information about an account's storage use.


## Edit video details

**POST** `/accounts/{account_id}/stream/{identifier}`

Edit details for a single video.


## Retrieve video details

**GET** `/accounts/{account_id}/stream/{identifier}`

Fetches details for a single video.


## Delete video

**DELETE** `/accounts/{account_id}/stream/{identifier}`

Deletes a video and its copies from Cloudflare Stream.


## Retrieve embed Code HTML

**GET** `/accounts/{account_id}/stream/{identifier}/embed`

Fetches an HTML code snippet to embed a video in a web page delivered through Cloudflare. On success, returns an HTML fragment for use on web pages to display a video. On failure, returns a JSON response body.


## Create signed URL tokens for videos

**POST** `/accounts/{account_id}/stream/{identifier}/token`

Creates a signed URL token for a video. If a body is not provided in the request, a token is created with default values.

