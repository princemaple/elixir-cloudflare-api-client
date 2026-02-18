# Active session

## Fetch details of an active session

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-session`

Returns details of an ongoing active session for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 404 

```json

```



## Kick participants from an active session

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-session/kick`

Kicks one or more participants from an active session using user ID or custom participant ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 404 

```json

```



## Kick all participants

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-session/kick-all`

Kicks all participants from an active session for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Mute participants of an active session

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-session/mute`

Mutes one or more participants from an active session using user ID or custom participant ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Mute all participants

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-session/mute-all`

Mutes all participants of an active session for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Create a poll

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/active-session/poll`

Creates a new poll in an active session for the given meeting ID.

### Responses

#### 201 

> Data is at `body["result"]`

```json

```

#### 400 Bad Request

```json

```


