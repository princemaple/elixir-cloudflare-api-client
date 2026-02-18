# Access application-scoped policies

## Create an Access application policy

**POST** `/accounts/{account_id}/access/apps/{app_id}/policies`

Creates a policy applying exclusive to a single application that defines the users or groups who can reach it. We recommend creating a reusable policy instead and subsequently referencing its ID in the application's 'policies' array.


## List Access application policies

**GET** `/accounts/{account_id}/access/apps/{app_id}/policies`

Lists Access policies configured for an application. Returns both exclusively scoped and reusable policies used by the application.


## Update an Access application policy

**PUT** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`

Updates an Access policy specific to an application. To update a reusable policy, use the /accounts/{account_id}/policies/{uid} endpoint.


## Get an Access application policy

**GET** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`

Fetches a single Access policy configured for an application. Returns both exclusively owned and reusable policies used by the application.


## Delete an Access application policy

**DELETE** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`

Deletes an Access policy specific to an application. To delete a reusable policy, use the /accounts/{account_id}/policies/{uid} endpoint.


## Convert an Access application policy to a reusable policy

**PUT** `/accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}/make_reusable`

Converts an application-scoped policy to a reusable policy. The policy will no longer be exclusively scoped to the application. Further updates to the policy should go through the /accounts/{account_id}/policies/{uid} endpoint.

