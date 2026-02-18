# Presets

## Create a preset

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/presets`

Creates a preset belonging to the current App

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch all presets

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/presets`

Fetches all the presets belonging to an App.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Update a preset

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/presets/{preset_id}`

Update a preset by the provided preset ID

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Fetch details of a preset

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/presets/{preset_id}`

Fetches details of a preset using the provided preset ID

### Responses

#### 200 

> Data is at `body["result"]`

```json

```



## Delete a preset

**DELETE** `/accounts/{account_id}/realtime/kit/{app_id}/presets/{preset_id}`

Deletes a preset using the provided preset ID

### Responses

#### 200 

> Data is at `body["result"]`

```json

```


