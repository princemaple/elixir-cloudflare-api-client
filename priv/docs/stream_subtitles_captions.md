# Stream Subtitles/Captions

Add subtitles or captions to Stream videos for any language.

## Upload a caption/subtitle

`PUT` Upload the file to the endpoint for a specific BCP47 language. One caption/subtitle per language is allowed.

> PUT accounts/:account_identifier/stream/:video_identifier/captions/:language

**Permission needed:** `None`

Available in:




## List captions/subtitles

`GET` View the currently available captions for a specific video.

> GET accounts/:account_identifier/stream/:video_identifier/captions

**Permission needed:** `None`

Available in:




## Delete a caption/subtitle

`DELETE` Remove the caption or subtitle from a video

> DELETE accounts/:account_identifier/stream/:video_identifier/captions/:language

**Permission needed:** `None`

Available in:



