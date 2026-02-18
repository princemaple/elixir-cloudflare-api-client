# Zero Trust Risk Scoring

## Update configuration for risk behaviors

**PUT** `/accounts/{account_id}/zt_risk_scoring/behaviors`




## Get all behaviors and associated configuration

**GET** `/accounts/{account_id}/zt_risk_scoring/behaviors`




## Get risk score info for all users in the account

**GET** `/accounts/{account_id}/zt_risk_scoring/summary`




## Get risk event/score information for a specific user

**GET** `/accounts/{account_id}/zt_risk_scoring/{user_id}`




## Clear the risk score for a particular user

**POST** `/accounts/{account_id}/zt_risk_scoring/{user_id}/reset`



