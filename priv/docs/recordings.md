# Recordings

## Start recording a meeting

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/recordings`

Starts recording a meeting. The meeting can be started by an App admin directly, or a participant with permissions to start a recording, based on the type of authorization used.


## Fetch all recordings for an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/recordings`

Returns all recordings for an App. If the `meeting_id` parameter is passed, returns all recordings for the given meeting ID.


## Fetch active recording

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/recordings/active-recording/{meeting_id}`

Returns the active recording details for the given meeting ID.


## Start recording audio and video tracks

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/recordings/track`

Starts a track recording in a meeting. Track recordings consist of "layers". Layers are used to map audio/video tracks in a meeting to output destinations. More information about track recordings is available in the [Track Recordings Guide Page](https://docs.realtime.cloudflare.com/guides/capabilities/recording/recording-overview).


## Pause/Resume/Stop recording

**PUT** `/accounts/{account_id}/realtime/kit/{app_id}/recordings/{recording_id}`

Pause/Resume/Stop a given recording ID.


## Fetch details of a recording

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/recordings/{recording_id}`

Returns details of a recording for the given recording ID.

