## List Members

**Permission needed:** `#organization:read`

Available in:

* enterprise

`GET` List all members of a organization

> GET organizations/:organization_identifier/members


## Member Details

**Permission needed:** `#organization:read`

Available in:

* enterprise

`GET` Get information about a specific member of an organization

> GET organizations/:organization_identifier/members/:identifier


## Edit Member Roles

**Permission needed:** `#organization:edit`

Available in:

* enterprise

`PATCH` Change the Roles of an Organization's Member

> PATCH organizations/:organization_identifier/members/:identifier


## Remove Member

**Permission needed:** `#organization:edit`

Available in:

* enterprise

`DELETE` Remove a member from an organization

> DELETE organizations/:organization_identifier/members/:identifier
