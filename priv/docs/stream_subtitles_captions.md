# Stream Subtitles/Captions

## List captions or subtitles

**GET** `/accounts/{account_id}/stream/{identifier}/captions`

Lists the available captions or subtitles for a specific video.


## Upload captions or subtitles

**PUT** `/accounts/{account_id}/stream/{identifier}/captions/{language}`

Uploads the caption or subtitle file to the endpoint for a specific BCP47 language. One caption or subtitle file per language is allowed.


## List captions or subtitles for a provided language

**GET** `/accounts/{account_id}/stream/{identifier}/captions/{language}`

Lists the captions or subtitles for provided language.


## Delete captions or subtitles

**DELETE** `/accounts/{account_id}/stream/{identifier}/captions/{language}`

Removes the captions or subtitles from a video.


## Generate captions or subtitles for a provided language via AI

**POST** `/accounts/{account_id}/stream/{identifier}/captions/{language}/generate`

Generate captions or subtitles for provided language via AI.


## Return WebVTT captions for a provided language

**GET** `/accounts/{account_id}/stream/{identifier}/captions/{language}/vtt`

Return WebVTT captions for a provided language.

