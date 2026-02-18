# Meetings

## Create a meeting

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings`

Create a meeting for the given App ID.

### Responses

#### 201 

> Data is at `body["result"]`

```json

```



## Fetch all meetings for an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings`

Returns all meetings for the given App ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Replace a meeting

**PUT** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}`

Replaces all the details for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Update a meeting

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}`

Updates a meeting in an App for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Fetch a meeting for an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}`

Returns a meeting details in an App for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Add a participant

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants`

Adds a participant to the given meeting ID.

### Responses

#### 201 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Fetch all participants of a meeting

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants`

Returns all participants detail for the given meeting ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Edit a participant's detail

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}`

Updates a participant's details for the given meeting and participant ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Fetch a participant's detail

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}`

Returns a participant details for the given meeting and participant ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Delete a participant

**DELETE** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}`

Deletes a participant for the given meeting and participant ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```



## Refresh participant's authentication token

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/meetings/{meeting_id}/participants/{participant_id}/token`

Regenerates participant's authentication token for the given meeting and participant ID.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 500 

```json

```


