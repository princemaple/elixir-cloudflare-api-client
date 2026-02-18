# Zero Trust Risk Scoring Integrations

## Create new risk score integration.

**POST** `/accounts/{account_id}/zt_risk_scoring/integrations`




## List all risk score integrations for the account.

**GET** `/accounts/{account_id}/zt_risk_scoring/integrations`




## Get risk score integration by reference id.

**GET** `/accounts/{account_id}/zt_risk_scoring/integrations/reference_id/{reference_id}`




## Update a risk score integration.

**PUT** `/accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`

Overwrite the reference_id, tenant_url, and active values with the ones provided.


## Get risk score integration by id.

**GET** `/accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`




## Delete a risk score integration.

**DELETE** `/accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`



