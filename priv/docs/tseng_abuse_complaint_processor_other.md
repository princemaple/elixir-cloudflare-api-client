# tseng-abuse-complaint-processor_other

## List abuse reports

**GET** `/accounts/{account_id}/abuse-reports`

List the abuse reports for a given account


## List abuse report emails

**GET** `/accounts/{account_id}/abuse-reports/{report_id}/emails`

List emails sent to the customer for an abuse report. Returns all successful customer emails sent for the specified abuse report. Does not include emails sent to hosts or submitters.


## List abuse report mitigations

**GET** `/accounts/{account_id}/abuse-reports/{report_id}/mitigations`

List mitigations done to remediate the abuse report.


## Request review on mitigations

**POST** `/accounts/{account_id}/abuse-reports/{report_id}/mitigations/appeal`

Request a review for mitigations on an account.


## Submit an abuse report

**POST** `/accounts/{account_id}/abuse-reports/{report_param}`

Submit the Abuse Report of a particular type


## Abuse Report Details

**GET** `/accounts/{account_id}/abuse-reports/{report_param}`

Retrieve the details of an abuse report.

