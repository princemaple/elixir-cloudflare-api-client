# Account User Groups

## Create User Group

**POST** `/accounts/{account_id}/iam/user_groups`

Create a new user group under the specified account.


## List User Groups

**GET** `/accounts/{account_id}/iam/user_groups`

List all the user groups for an account.


## Update User Group

**PUT** `/accounts/{account_id}/iam/user_groups/{user_group_id}`

Modify an existing user group.


## User Group Details

**GET** `/accounts/{account_id}/iam/user_groups/{user_group_id}`

Get information about a specific user group in an account.


## Remove User Group

**DELETE** `/accounts/{account_id}/iam/user_groups/{user_group_id}`

Remove a user group from an account.


## Update User Group Members

**PUT** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members`

Replace the set of members attached to a User Group.


## Add User Group Members

**POST** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members`

Add members to a User Group.


## List User Group Members

**GET** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members`

List all the members attached to a user group.


## Remove User Group Member

**DELETE** `/accounts/{account_id}/iam/user_groups/{user_group_id}/members/{member_id}`

Remove a member from User Group

