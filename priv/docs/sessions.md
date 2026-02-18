# Sessions

## Fetch all sessions of an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions`

Returns details of all sessions of an App.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch details of peer

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/peer-report/{peer_id}`

Returns details of the given peer ID along with call statistics for the given session ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch details of a session

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}`

Returns data of the given session ID including recording details.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch all chat messages of a session

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/chat`

Returns a URL to download all chat messages of the session ID in CSV format.


### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch participants list of a session

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/participants`

Returns a list of participants for the given session ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch details of a participant

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/participants/{participant_id}`

Returns details of the given participant ID along with call statistics for the given session ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Generate summary of Transcripts for the session

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/summary`

Trigger Summary generation of Transcripts for the session ID.

### Responses

#### 2XX Success

> Data is at `body["result"]`

```json
{
  "data": {
    "message": "*string*",
    "success": "*boolean*"
  },
  "success": "*boolean*"
}
```



## Fetch summary of transcripts for a session

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/summary`

Returns a Summary URL to download the Summary of Transcripts for the session ID as plain text.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch the complete transcript for a session

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/transcript`

Returns a URL to download the transcript for the session ID in CSV format.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```


