# DLP Predefined Entries

## Create predefined entry

**POST** `/accounts/{account_id}/dlp/entries/predefined`

Predefined entries can't be created, this will update an existing predefined entry.
This is needed for our generated terraform API.


## Delete predefined entry

**DELETE** `/accounts/{account_id}/dlp/entries/predefined/{entry_id}`

This is a no-op as predefined entires can't be deleted but is needed for our generated terraform API.

