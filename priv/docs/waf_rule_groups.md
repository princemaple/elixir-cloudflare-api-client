# WAF rule groups

## List WAF rule groups

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}/groups`

Fetches the WAF rule groups in a WAF package.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).


## Update a WAF rule group

**PATCH** `/zones/{zone_id}/firewall/waf/packages/{package_id}/groups/{group_id}`

Updates a WAF rule group. You can update the state (`mode` parameter) of a rule group.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).


## Get a WAF rule group

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}/groups/{group_id}`

Fetches the details of a WAF rule group.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

