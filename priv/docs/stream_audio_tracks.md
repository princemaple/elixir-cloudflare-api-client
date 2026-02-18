# Stream Audio Tracks

## List additional audio tracks on a video

**GET** `/accounts/{account_id}/stream/{identifier}/audio`

Lists additional audio tracks on a video. Note this API will not return information for audio attached to the video upload.


## Add audio tracks to a video

**POST** `/accounts/{account_id}/stream/{identifier}/audio/copy`

Adds an additional audio track to a video using the provided audio track URL.


## Edit additional audio tracks on a video

**PATCH** `/accounts/{account_id}/stream/{identifier}/audio/{audio_identifier}`

Edits additional audio tracks on a video. Editing the default status of an audio track to `true` will mark all other audio tracks on the video default status to `false`.


## Delete additional audio tracks on a video

**DELETE** `/accounts/{account_id}/stream/{identifier}/audio/{audio_identifier}`

Deletes additional audio tracks on a video. Deleting a default audio track is not allowed. You must assign another audio track as default prior to deletion.

