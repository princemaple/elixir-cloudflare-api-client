# brand_protection

## Update alerts on submitted domains by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts`

Return a success message after updating alerts on submitted domains by ID

### Responses

#### default 

```json

```



## Read all alerts on submitted domains

**GET** `/accounts/{account_id}/brand-protection/alerts`

Return all alerts on submitted domains

### Responses

#### default 

```json

```



## Update verification statuses of tracked URLs to awaiting by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts/clear`

Return a success message after updating verification statuses of tracked URLs to awaiting by ID

### Responses

#### default 

```json

```



## Update verification statuses of tracked URLs to disproven by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts/refute`

Return a success message after updating verification statuses of tracked URLs to disproven by ID

### Responses

#### default 

```json

```



## Update verification statuses of tracked URLs to confirmed by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts/verify`

Return a success message after updating verification statuses of tracked URLs to confirmed by ID

### Responses

#### default 

```json

```



## Create new brands

**POST** `/accounts/{account_id}/brand-protection/brands`

Return new brands

### Responses

#### default 

```json

```



## Read all brands

**GET** `/accounts/{account_id}/brand-protection/brands`

Return all brands

### Responses

#### default 

```json

```



## Delete brands by ID

**DELETE** `/accounts/{account_id}/brand-protection/brands`

Return a success message after deleting brands by ID

### Responses

#### default 

```json

```



## Create new patterns for brands by ID

**POST** `/accounts/{account_id}/brand-protection/brands/patterns`

Return a success message after creating new patterns for brands by ID

### Responses

#### default 

```json

```



## Read patterns for brands by ID

**GET** `/accounts/{account_id}/brand-protection/brands/patterns`

Return patterns for brands based on ID

### Responses

#### default 

```json

```



## Delete patterns for brands by ID

**DELETE** `/accounts/{account_id}/brand-protection/brands/patterns`

Return a success message after deleting patterns for brands by ID

### Responses

#### default 

```json

```



## Update verification statuses of submitted URLs to awaiting by ID

**PATCH** `/accounts/{account_id}/brand-protection/clear`

Return a success message after updating verification statuses of submitted URLs to awaiting by ID

### Responses

#### default 

```json

```



## Read submitted domains by ID

**GET** `/accounts/{account_id}/brand-protection/domain-info`

Return submitted domains based on ID

### Responses

#### default 

```json

```



## Read recent URL submissions

**GET** `/accounts/{account_id}/brand-protection/recent-submissions`

Return recent URL submissions

### Responses

#### default 

```json

```



## Update verification statuses of submitted URLs to disproven by ID

**PATCH** `/accounts/{account_id}/brand-protection/refute`

Return a success message after updating verification statuses of submitted URLs to disproven by ID

### Responses

#### default 

```json

```



## Read URL submissions by ID

**GET** `/accounts/{account_id}/brand-protection/submission-info`

Return URL submissions based on ID

### Responses

#### default 

```json

```



## Create new URL submissions

**POST** `/accounts/{account_id}/brand-protection/submit`

Return new URL submissions

### Responses

#### 201 Created

> Data is at `body["result"]`

```json
{
  "skipped_urls": [
    {}
  ],
  "submitted_urls": [
    {}
  ]
}
```

#### default 

```json

```



## Read submitted domains by pattern

**GET** `/accounts/{account_id}/brand-protection/tracked-domains`

Return submitted domains based on pattern

### Responses

#### default 

```json

```



## Read submitted URLs by ID

**GET** `/accounts/{account_id}/brand-protection/url-info`

Return submitted URLs based on ID

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
[
  {}
]
```

#### default 

```json

```



## Update verification statuses of submitted URLs to confirmed by ID

**PATCH** `/accounts/{account_id}/brand-protection/verify`

Return a success message after updating verification statuses of submitted URLs to confirmed by ID

### Responses

#### default 

```json

```



## Internal route for testing URL submissions

**POST** `/internal/submit`



### Responses

#### default 

```json

```



## Run liveness checks

**GET** `/live`

Return a success message after running liveness checks

### Responses

#### default 

```json

```



## Run readiness checks

**GET** `/ready`

Return a success message after running readiness checks

### Responses

#### default 

```json

```


