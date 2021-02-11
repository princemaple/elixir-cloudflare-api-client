## Zone-Level Access Organizations

Access Organizations control the look and feel of your login page and the authentication domain it is located at. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-organizations-properties.)

### Access Organization Details

**Permission needed:** `None`

Available in:



`GET` Fetch your Access Organization details

> GET zones/:identifier/access/organizations


### Create Access Organization

**Permission needed:** `None`

Available in:



`POST` Create a new Access Organization

> POST zones/:identifier/access/organizations


### Update Access Organization

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Organization

> PUT zones/:identifier/access/organizations


### Revoke all Access Tokens for a user

**Permission needed:** `None`

Available in:



`POST` Revoke any outstanding tokens issued for a specific user

> POST zones/:identifier/access/organizations/revoke_user

