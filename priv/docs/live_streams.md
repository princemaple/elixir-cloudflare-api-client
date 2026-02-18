# Live streams

## Fetch complete analytics data for your livestreams

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/analytics/livestreams/overall`

Returns livestream analytics for the specified time range.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "count": "*integer*",
    "total_ingest_seconds": "*integer*",
    "total_viewer_seconds": "*integer*"
  },
  "success": "*boolean*"
}
```



## Create an independent livestream

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/livestreams`

Creates a livestream for the given App ID and returns ingest server, stream key, and playback URL. You can pass custom input to the ingest server and stream key, and freely distribute the content using the playback URL on any player that supports HLS/LHLS.

### Responses

#### 201 Successful response

> Data is at `body["result"]`

```json
{
  "data": {
    "disabled": "*boolean*",
    "id": "*string*",
    "ingest_server": "*string*",
    "meeting_id": "*string*",
    "name": "*string*",
    "playback_url": "*string*",
    "status": "*string*",
    "stream_key": "*string*"
  },
  "success": "*boolean*"
}
```



## Fetch all livestreams

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/livestreams`

Returns details of livestreams associated with the given App ID. It includes livestreams created by your App and RealtimeKit meetings that are livestreamed by your App. If you only want details of livestreams created by your App and not RealtimeKit meetings, you can use the `exclude_meetings` query parameter.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "disabled": "*string*",
    "id": "*string*",
    "ingest_server": "*string*",
    "meeting_id": "*string*",
    "name": "*string*",
    "paging": {
      "end_offset": "*integer*",
      "start_offset": "*integer*",
      "total_count": "*integer*"
    },
    "playback_url": "*string*",
    "status": "*string*",
    "stream_key": "*string*",
    "updated_at": "*string*"
  },
  "success": "*boolean*"
}
```



## Fetch livestream session details using livestream session ID

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/livestreams/sessions/{livestream-session-id}`

Returns livestream session details for the given livestream session ID. Retrieve the `livestream_session_id`using the `Fetch livestream session details using a session ID` API.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "err_message": "*string*",
    "id": "*string*",
    "ingest_seconds": "*integer*",
    "livestream_id": "*string*",
    "started_time": "*string*",
    "stopped_time": "*string*",
    "updated_at": "*string*",
    "viewer_seconds": "*integer*"
  },
  "success": "*boolean*"
}
```



## Fetch livestream details using livestream ID

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/livestreams/{livestream_id}`

Returns details of a livestream with sessions for the given livestream ID. Retreive the livestream ID using the `Start livestreaming a meeting` API.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "livestream": {
      "created_at": "*string*",
      "disabled": "*string*",
      "id": "*string*",
      "ingest_server": "*string*",
      "meeting_id": "*string*",
      "name": "*string*",
      "playback_url": "*string*",
      "status": "*string*",
      "stream_key": "*string*",
      "updated_at": "*string*"
    },
    "paging": {
      "end_offset": "*integer*",
      "start_offset": "*integer*",
      "total_count": "*integer*"
    },
    "session": {
      "created_at": "*string*",
      "err_message": "*string*",
      "id": "*string*",
      "ingest_seconds": "*number*",
      "invoked_time": "*string*",
      "livestream_id": "*string*",
      "started_time": "*string*",
      "stopped_time": "*string*",
      "updated_at": "*string*",
      "viewer_seconds": "*number*"
    }
  },
  "success": "*boolean*"
}
```



## Fetch active livestream session details

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/livestreams/{livestream_id}/active-livestream-session`

Returns details of all active livestreams for the given livestream ID. Retreive the livestream ID using the `Start livestreaming a meeting` API.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "livestream": {
      "created_at": "*string*",
      "disabled": "*string*",
      "id": "*string*",
      "ingest_server": "*string*",
      "meeting_id": "*string*",
      "name": "*string*",
      "playback_url": "*string*",
      "status": "*string*",
      "stream_key": "*string*",
      "updated_at": "*string*"
    },
    "session": {
      "created_at": "*string*",
      "err_message": "*string*",
      "id": "*string*",
      "ingest_seconds": "*string*",
      "invoked_time": "*string*",
      "livestream_id": "*string*",
      "started_time": "*string*",
      "stopped_time": "*string*",
      "updated_at": "*string*",
      "viewer_seconds": "*string*"
    }
  },
  "success": "*boolean*"
}
```



## Fetch active livestreams for a meeting

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-livestream`

Returns details of all active livestreams for the given meeting ID.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "disabled": "*string*",
    "id": "*string*",
    "ingest_server": "*string*",
    "meeting_id": "*string*",
    "name": "*string*",
    "playback_url": "*string*",
    "status": "*string*",
    "stream_key": "*string*",
    "updated_at": "*string*"
  },
  "success": "*boolean*"
}
```



## Stop livestreaming a meeting

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-livestream/stop`

Stops the active livestream of a meeting associated with the given meeting ID. Retreive the meeting ID using the `Create a meeting` API.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "message": "*string*"
  },
  "success": "*boolean*"
}
```



## Fetch livestream session details for a meeting

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/livestream`

Returns livestream session details for the given meeting ID. Retreive the meeting ID using the `Create a meeting` API.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "livestreams": [
      {
        "created_at": "*string*",
        "disabled": "*boolean*",
        "id": "*string*",
        "ingest_server": "*string*",
        "meeting_id": "*string*",
        "name": "*string*",
        "playback_url": "*string*",
        "status": "*string*",
        "stream_key": "*string*",
        "updated_at": "*string*"
      }
    ],
    "paging": {
      "end_offset": "*integer*",
      "start_offset": "*integer*",
      "total_count": "*integer*"
    },
    "sessions": {
      "created_at": "*string*",
      "err_message": "*string*",
      "id": "*string*",
      "ingest_seconds": "*string*",
      "invoked_time": "*string*",
      "livestream_id": "*string*",
      "started_time": "*string*",
      "stopped_time": "*string*",
      "updated_at": "*string*"
    }
  },
  "success": "*boolean*"
}
```



## Start livestreaming a meeting

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/livestreams`

Starts livestream of a meeting associated with the given meeting ID. Retreive the meeting ID using the `Create a meeting` API.

### Responses

#### 201 Created

> Data is at `body["result"]`

```json
{
  "data": {
    "id": "*string*",
    "ingest_server": "*string*",
    "playback_url": "*string*",
    "status": "*string*",
    "stream_key": "*string*"
  },
  "success": "*boolean*"
}
```



## Fetch livestream session details using a session ID

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/livestream-sessions`

Returns livestream session details for the given session ID. Retreive the session ID using the `Fetch all sessions of an App` API.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "err_message": "*string*",
    "id": "*string*",
    "ingest_seconds": "*number*",
    "invoked_time": "*string*",
    "livestream_id": "*string*",
    "paging": {
      "end_offset": "*number*",
      "start_offset": "*number*",
      "total_count": "*number*"
    },
    "stopped_time": "*string*",
    "updated_at": "*string*",
    "viewer_seconds": "*number*"
  },
  "success": "*boolean*"
}
```


