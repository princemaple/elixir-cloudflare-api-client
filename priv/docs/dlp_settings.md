# DLP Settings

## Fetch limits associated with DLP for account

**GET** `/accounts/{account_id}/dlp/limits`




## Validate a DLP regex pattern

**POST** `/accounts/{account_id}/dlp/patterns/validate`

Validates whether this pattern is a valid regular expression. Rejects it if
the regular expression is too complex or can match an unbounded-length
string. The regex will be rejected if it uses `*` or `+`. Bound the maximum
number of characters that can be matched using a range, e.g. `{1,100}`.


## Set payload log settings

**PUT** `/accounts/{account_id}/dlp/payload_log`




## Get payload log settings

**GET** `/accounts/{account_id}/dlp/payload_log`



