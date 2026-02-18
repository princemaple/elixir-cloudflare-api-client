# logo_match

## Read matches for logo queries by ID

**GET** `/accounts/{account_id}/brand-protection/logo-matches`

Return matches for logo queries based on ID

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "matches": [
    {}
  ],
  "total": "*integer*"
}
```

#### 422 

```json

```

#### default 

```json

```



## Download matches for logo queries by ID

**GET** `/accounts/{account_id}/brand-protection/logo-matches/download`

Return matches as CSV for logo queries based on ID

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "matches": [
    {}
  ],
  "total": "*integer*"
}
```

#### 422 

```json

```

#### default 

```json

```



## Create new saved logo queries from image files

**POST** `/accounts/{account_id}/brand-protection/logos`

Return new saved logo queries created from image files

### Responses

#### 201 Created

> Data is at `body["result"]`

```json
{
  "id": "*integer*",
  "tag": "*string*",
  "upload_path": "*string*"
}
```

#### 422 

```json

```

#### default 

```json

```



## Read all saved logo queries

**GET** `/accounts/{account_id}/brand-protection/logos`

Return all saved logo queries

### Responses

#### default 

```json

```



## Read saved logo queries by ID

**GET** `/accounts/{account_id}/brand-protection/logos/{logo_id}`

Return saved logo queries based on ID

### Responses

#### default 

```json

```



## Delete saved logo queries by ID

**DELETE** `/accounts/{account_id}/brand-protection/logos/{logo_id}`

Return a success message after deleting saved logo queries by ID

### Responses

#### 204 No Content

> Data is at `body["result"]`

```json

```

#### default 

```json

```



## Create new logo queries from image files

**POST** `/accounts/{account_id}/brand-protection/scan-logo`

Return new logo queries created from image files

### Responses

#### default 

```json

```



## Create new logo queries from URLs

**POST** `/accounts/{account_id}/brand-protection/scan-page`

Return new logo queries created from URLs

### Responses

#### default 

```json

```



## Internal route for testing signed URLs

**GET** `/signed-url`



### Responses

#### default 

```json

```


