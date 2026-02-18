# Bot Settings

## Update Zone Bot Management Config

**PUT** `/zones/{zone_id}/bot_management`

Updates the Bot Management configuration for a zone.

This API is used to update:
- **Bot Fight Mode**
- **Super Bot Fight Mode**
- **Bot Management for Enterprise**

See [Bot Plans](https://developers.cloudflare.com/bots/plans/) for more information on the different plans 
\
If you recently upgraded or downgraded your plan, refer to the following examples to clean up old configurations. 
Copy and paste the example body to remove old zone configurations based on your current plan.
#### Clean up configuration for Bot Fight Mode plan
```json
{
  "sbfm_likely_automated": "allow", 
  "sbfm_definitely_automated": "allow", 
  "sbfm_verified_bots": "allow", 
  "sbfm_static_resource_protection": false, 
  "optimize_wordpress": false, 
  "suppress_session_score": false
}
```
#### Clean up configuration for SBFM Pro plan
```json
{
  "sbfm_likely_automated": "allow", 
  "fight_mode": false 
}
```
#### Clean up configuration for SBFM Biz plan
```json
{
  "fight_mode": false
}
```
#### Clean up configuration for BM Enterprise Subscription plan
It is strongly recommended that you ensure you have [custom rules](https://developers.cloudflare.com/waf/custom-rules/) in place to protect your zone before disabling the SBFM rules. Without these protections, your zone is vulnerable to attacks.
```json
{
  "sbfm_likely_automated": "allow", 
  "sbfm_definitely_automated": "allow", 
  "sbfm_verified_bots": "allow", 
  "sbfm_static_resource_protection": false, 
  "optimize_wordpress": false, 
  "fight_mode": false
}
```



## Get Zone Bot Management Config

**GET** `/zones/{zone_id}/bot_management`

Retrieve a zone's Bot Management Config

