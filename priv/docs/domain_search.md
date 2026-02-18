# domain_search

## Read matches for string queries by ID

**GET** `/accounts/{account_id}/brand-protection/matches`

Return matches for string queries based on ID

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



## Download matches for string queries by ID

**GET** `/accounts/{account_id}/brand-protection/matches/download`

Return matches as CSV for string queries based on ID

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



## Create new saved string queries

**POST** `/accounts/{account_id}/brand-protection/queries`

Return a success message after creating new saved string queries

### Responses

#### 204 No Content

> Data is at `body["result"]`

```json

```

#### 422 

```json

```

#### default 

```json

```



## Update saved string queries by ID

**PATCH** `/accounts/{account_id}/brand-protection/queries`

Return a success message after updating saved string queries by ID

### Responses

#### default 

```json

```



## Read string queries by ID

**GET** `/accounts/{account_id}/brand-protection/queries`

Return string queries based on ID

### Responses

#### default 

```json

```



## Delete saved string queries by ID

**DELETE** `/accounts/{account_id}/brand-protection/queries`

Return a success message after deleting saved string queries by ID

### Responses

#### 204 No Content

> Data is at `body["result"]`

```json

```

#### 422 

```json

```

#### default 

```json

```



## Create new saved string queries in bulk

**POST** `/accounts/{account_id}/brand-protection/queries/bulk`

Return a success message after creating new saved string queries in bulk

### Responses

#### 204 No Content

> Data is at `body["result"]`

```json

```

#### 422 

```json

```

#### default 

```json

```



## Create new string queries

**POST** `/accounts/{account_id}/brand-protection/search`

Return new string queries

### Responses

#### default 

```json

```



## Read the total number of saved string queries

**GET** `/accounts/{account_id}/brand-protection/total-queries`

Return the total number of saved string queries

### Responses

#### default 

```json

```


