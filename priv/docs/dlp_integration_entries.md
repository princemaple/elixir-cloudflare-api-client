# DLP Integration Entries

## Create integration entry

**POST** `/accounts/{account_id}/dlp/entries/integration`

Integration entries can't be created, this will update an existing integration entry.
This is needed for our generated terraform API.


## Update integration entry

**PUT** `/accounts/{account_id}/dlp/entries/integration/{entry_id}`

Updates a DLP entry.


## Delete integration entry

**DELETE** `/accounts/{account_id}/dlp/entries/integration/{entry_id}`

This is a no-op as integration entires can't be deleted but is needed for our generated terraform API.

