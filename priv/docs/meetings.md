# Meetings

## Create a meeting

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings`

Create a meeting for the given App ID.


## Fetch all meetings for an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings`

Returns all meetings for the given App ID.


## Replace a meeting

**PUT** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}`

Replaces all the details for the given meeting ID.


## Update a meeting

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}`

Updates a meeting in an App for the given meeting ID.


## Fetch a meeting for an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}`

Returns a meeting details in an App for the given meeting ID.


## Add a participant

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants`

Adds a participant to the given meeting ID.


## Fetch all participants of a meeting

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants`

Returns all participants detail for the given meeting ID.


## Edit a participant's detail

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}`

Updates a participant's details for the given meeting and participant ID.


## Fetch a participant's detail

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}`

Returns a participant details for the given meeting and participant ID.


## Delete a participant

**DELETE** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}`

Deletes a participant for the given meeting and participant ID.


## Refresh participant's authentication token

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}/token`

Regenerates participant's authentication token for the given meeting and participant ID.

