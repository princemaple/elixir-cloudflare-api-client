# Email Security Settings

## Create an email allow policy

**POST** `/accounts/{account_id}/email-security/settings/allow_policies`




## List email allow policies

**GET** `/accounts/{account_id}/email-security/settings/allow_policies`

Lists, searches, and sorts an account’s email allow policies.


## Batch Allow Policies

**POST** `/accounts/{account_id}/email-security/settings/allow_policies/batch`

Send a Batch of Allow Policies API calls to be executed together.


## Update an email allow policy

**PATCH** `/accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`




## Get an email allow policy

**GET** `/accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`




## Delete an email allow policy

**DELETE** `/accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`




## Create a blocked email sender

**POST** `/accounts/{account_id}/email-security/settings/block_senders`




## List blocked email senders

**GET** `/accounts/{account_id}/email-security/settings/block_senders`




## Batch Block Senders

**POST** `/accounts/{account_id}/email-security/settings/block_senders/batch`

Send a Batch of Block Senders API calls to be executed together.


## Update a blocked email sender

**PATCH** `/accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`




## Get a blocked email sender

**GET** `/accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`




## Delete a blocked email sender

**DELETE** `/accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`




## List protected email domains

**GET** `/accounts/{account_id}/email-security/settings/domains`

Lists, searches, and sorts an account’s email domains.


## Unprotect multiple email domains

**DELETE** `/accounts/{account_id}/email-security/settings/domains`




## Update an email domain

**PATCH** `/accounts/{account_id}/email-security/settings/domains/{domain_id}`




## Get an email domain

**GET** `/accounts/{account_id}/email-security/settings/domains/{domain_id}`




## Unprotect an email domain

**DELETE** `/accounts/{account_id}/email-security/settings/domains/{domain_id}`




## Create an entry in impersonation registry

**POST** `/accounts/{account_id}/email-security/settings/impersonation_registry`




## List entries in impersonation registry

**GET** `/accounts/{account_id}/email-security/settings/impersonation_registry`

Lists, searches, and sorts entries in the impersonation registry.


## Update an entry in impersonation registry

**PATCH** `/accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`




## Get an entry in impersonation registry

**GET** `/accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`




## Delete an entry from impersonation registry

**DELETE** `/accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`




## Batch Sending Domain Restrictions

**POST** `/accounts/{account_id}/email-security/settings/sending_domain_restrictions/batch`

Send a Batch of `sending_domain_restrictions` API calls to be executed together.


## Create a trusted email domain

**POST** `/accounts/{account_id}/email-security/settings/trusted_domains`




## List trusted email domains

**GET** `/accounts/{account_id}/email-security/settings/trusted_domains`

Lists, searches, and sorts an account’s trusted email domains.


## Batch Trusted Domains

**POST** `/accounts/{account_id}/email-security/settings/trusted_domains/batch`

Send a Batch of Trusted Domains API calls to be executed together.


## Update a trusted email domain

**PATCH** `/accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`




## Get a trusted email domain

**GET** `/accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`




## Delete a trusted email domain

**DELETE** `/accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`



