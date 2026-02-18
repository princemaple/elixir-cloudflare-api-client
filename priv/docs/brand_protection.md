# brand_protection

## Update alerts on submitted domains by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts`

Return a success message after updating alerts on submitted domains by ID


## Read all alerts on submitted domains

**GET** `/accounts/{account_id}/brand-protection/alerts`

Return all alerts on submitted domains


## Update verification statuses of tracked URLs to awaiting by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts/clear`

Return a success message after updating verification statuses of tracked URLs to awaiting by ID


## Update verification statuses of tracked URLs to disproven by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts/refute`

Return a success message after updating verification statuses of tracked URLs to disproven by ID


## Update verification statuses of tracked URLs to confirmed by ID

**PATCH** `/accounts/{account_id}/brand-protection/alerts/verify`

Return a success message after updating verification statuses of tracked URLs to confirmed by ID


## Create new brands

**POST** `/accounts/{account_id}/brand-protection/brands`

Return new brands


## Read all brands

**GET** `/accounts/{account_id}/brand-protection/brands`

Return all brands


## Delete brands by ID

**DELETE** `/accounts/{account_id}/brand-protection/brands`

Return a success message after deleting brands by ID


## Create new patterns for brands by ID

**POST** `/accounts/{account_id}/brand-protection/brands/patterns`

Return a success message after creating new patterns for brands by ID


## Read patterns for brands by ID

**GET** `/accounts/{account_id}/brand-protection/brands/patterns`

Return patterns for brands based on ID


## Delete patterns for brands by ID

**DELETE** `/accounts/{account_id}/brand-protection/brands/patterns`

Return a success message after deleting patterns for brands by ID


## Update verification statuses of submitted URLs to awaiting by ID

**PATCH** `/accounts/{account_id}/brand-protection/clear`

Return a success message after updating verification statuses of submitted URLs to awaiting by ID


## Read submitted domains by ID

**GET** `/accounts/{account_id}/brand-protection/domain-info`

Return submitted domains based on ID


## Read recent URL submissions

**GET** `/accounts/{account_id}/brand-protection/recent-submissions`

Return recent URL submissions


## Update verification statuses of submitted URLs to disproven by ID

**PATCH** `/accounts/{account_id}/brand-protection/refute`

Return a success message after updating verification statuses of submitted URLs to disproven by ID


## Read URL submissions by ID

**GET** `/accounts/{account_id}/brand-protection/submission-info`

Return URL submissions based on ID


## Create new URL submissions

**POST** `/accounts/{account_id}/brand-protection/submit`

Return new URL submissions


## Read submitted domains by pattern

**GET** `/accounts/{account_id}/brand-protection/tracked-domains`

Return submitted domains based on pattern


## Read submitted URLs by ID

**GET** `/accounts/{account_id}/brand-protection/url-info`

Return submitted URLs based on ID


## Update verification statuses of submitted URLs to confirmed by ID

**PATCH** `/accounts/{account_id}/brand-protection/verify`

Return a success message after updating verification statuses of submitted URLs to confirmed by ID


## Internal route for testing URL submissions

**POST** `/internal/submit`




## Run liveness checks

**GET** `/live`

Return a success message after running liveness checks


## Run readiness checks

**GET** `/ready`

Return a success message after running readiness checks

