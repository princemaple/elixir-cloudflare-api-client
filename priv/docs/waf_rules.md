# WAF rules

## List WAF rules

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}/rules`

Fetches WAF rules in a WAF package.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).


## Update a WAF rule

**PATCH** `/zones/{zone_id}/firewall/waf/packages/{package_id}/rules/{rule_id}`

Updates a WAF rule. You can only update the mode/action of the rule.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).


## Get a WAF rule

**GET** `/zones/{zone_id}/firewall/waf/packages/{package_id}/rules/{rule_id}`

Fetches the details of a WAF rule in a WAF package.

**Note:** Applies only to the [previous version of WAF managed rules](https://developers.cloudflare.com/support/firewall/managed-rules-web-application-firewall-waf/understanding-waf-managed-rules-web-application-firewall/).

