# Account Members

A list of memberships of accounts this user can access

## List Members

`GET` List all members of an account

> GET accounts/:account_identifier/members

**Permission needed:** `#organization:read`

Available in:

* free
* pro
* business
* enterprise


## Add Member

`POST` Add a user to the list of members for this account

> POST accounts/:account_identifier/members

**Permission needed:** `#organization:edit`

Available in:

* free
* pro
* business
* enterprise


## Member Details

`GET` Get information about a specific member of an account

> GET accounts/:account_identifier/members/:identifier

**Permission needed:** `#organization:read`

Available in:

* free
* pro
* business
* enterprise


## Update Member

`PUT` Modify an account member

> PUT accounts/:account_identifier/members/:identifier

**Permission needed:** `#organization:edit`

Available in:

* free
* pro
* business
* enterprise


## Remove Member

`DELETE` Remove a member from an account

> DELETE accounts/:account_identifier/members/:identifier

**Permission needed:** `#organization:edit`

Available in:

* free
* pro
* business
* enterprise

