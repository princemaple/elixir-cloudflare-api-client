# Stream MP4 Downloads

## Create downloads

**POST** `/accounts/{account_id}/stream/{identifier}/downloads`

Creates a download for a video when a video is ready to view. Use `/downloads/{download_type}` instead for type-specific downloads. Available types are `default` and `audio`.


## List downloads

**GET** `/accounts/{account_id}/stream/{identifier}/downloads`

Lists the downloads created for a video.


## Delete downloads

**DELETE** `/accounts/{account_id}/stream/{identifier}/downloads`

Delete the downloads for a video. Use `/downloads/{download_type}` instead for type-specific downloads. Available types are `default` and `audio`.


## Create download

**POST** `/accounts/{account_id}/stream/{identifier}/downloads/{download_type}`

Creates a download for a video of specified type. For backwards-compatibility, POST requests to /downloads will enable the default download.


## Delete download

**DELETE** `/accounts/{account_id}/stream/{identifier}/downloads/{download_type}`

Delete specific type of download. For backwards-compatibility, DELETE requests to /downloads will delete the default download.

