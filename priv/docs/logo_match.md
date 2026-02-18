# logo_match

## Read matches for logo queries by ID

**GET** `/accounts/{account_id}/brand-protection/logo-matches`

Return matches for logo queries based on ID


## Download matches for logo queries by ID

**GET** `/accounts/{account_id}/brand-protection/logo-matches/download`

Return matches as CSV for logo queries based on ID


## Create new saved logo queries from image files

**POST** `/accounts/{account_id}/brand-protection/logos`

Return new saved logo queries created from image files


## Read all saved logo queries

**GET** `/accounts/{account_id}/brand-protection/logos`

Return all saved logo queries


## Read saved logo queries by ID

**GET** `/accounts/{account_id}/brand-protection/logos/{logo_id}`

Return saved logo queries based on ID


## Delete saved logo queries by ID

**DELETE** `/accounts/{account_id}/brand-protection/logos/{logo_id}`

Return a success message after deleting saved logo queries by ID


## Create new logo queries from image files

**POST** `/accounts/{account_id}/brand-protection/scan-logo`

Return new logo queries created from image files


## Create new logo queries from URLs

**POST** `/accounts/{account_id}/brand-protection/scan-page`

Return new logo queries created from URLs


## Internal route for testing signed URLs

**GET** `/signed-url`



