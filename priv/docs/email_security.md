# Email Security

## Search email messages

**GET** `/accounts/{account_id}/email-security/investigate`

Returns information for each email that matches the search parameter(s).
If the search takes too long, the endpoint returns 202 with a Location header
pointing to a polling endpoint where results can be retrieved once ready.


## Move multiple messages

**POST** `/accounts/{account_id}/email-security/investigate/move`

Maximum batch size: 1000 messages per request


## Preview for non-detection messages

**POST** `/accounts/{account_id}/email-security/investigate/preview`




## Release messages from quarantine

**POST** `/accounts/{account_id}/email-security/investigate/release`




## Get message details

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}`




## Get message detection details

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/detections`

Returns detection details such as threat categories and sender information for non-benign messages.


## Move a message

**POST** `/accounts/{account_id}/email-security/investigate/{postfix_id}/move`




## Get email preview

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/preview`

Returns a preview of the message body as a base64 encoded PNG image for non-benign messages.


## Get raw email content

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/raw`

Returns the raw eml of any non-benign message.


## Change email classfication

**POST** `/accounts/{account_id}/email-security/investigate/{postfix_id}/reclassify`




## Get email trace

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/trace`




## Get `PhishGuard` reports

**GET** `/accounts/{account_id}/email-security/phishguard/reports`




## Get reclassify submissions

**GET** `/accounts/{account_id}/email-security/submissions`

This endpoint returns information for submissions to made to reclassify emails.

