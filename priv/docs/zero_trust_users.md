# Zero Trust users

## Create a user

**POST** `/accounts/{account_id}/access/users`

Creates a new user.


## Get users

**GET** `/accounts/{account_id}/access/users`

Gets a list of users for an account.


## Get active sessions

**GET** `/accounts/{account_id}/access/users/{user_id}/active_sessions`

Get active sessions for a single user.


## Get single active session

**GET** `/accounts/{account_id}/access/users/{user_id}/active_sessions/{nonce}`

Get an active session for a single user.


## Get failed logins

**GET** `/accounts/{account_id}/access/users/{user_id}/failed_logins`

Get all failed login attempts for a single user.


## Get last seen identity

**GET** `/accounts/{account_id}/access/users/{user_id}/last_seen_identity`

Get last seen identity for a single user.

