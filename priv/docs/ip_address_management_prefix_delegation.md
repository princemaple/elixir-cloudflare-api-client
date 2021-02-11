## IP Address Management Prefix Delegation

Describe and modify delegations for the account's IP prefixes.

### List Prefix Delegations

**Permission needed:** `None`

Available in:



`GET` List all delegations for a given account IP prefix.

> GET accounts/:account_identifier/addressing/prefixes/:prefix_identifier/delegations


### Create Prefix Delegation

**Permission needed:** `None`

Available in:



`POST` Create a new account delegation for a given IP prefix.

> POST accounts/:account_identifier/addressing/prefixes/:prefix_identifier/delegations


### Delete Prefix Delegation

**Permission needed:** `None`

Available in:



`DELETE` Delete an account delegation for a given IP prefix.

> DELETE accounts/:account_identifier/addressing/prefixes/:prefix_identifier/delegations/:delegation_identifier

