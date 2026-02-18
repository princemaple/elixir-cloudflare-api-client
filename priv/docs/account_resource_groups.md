# Account Resource Groups

## Create Resource Group

**POST** `/accounts/{account_id}/iam/resource_groups`

Create a new Resource Group under the specified account.


## List Resource Groups

**GET** `/accounts/{account_id}/iam/resource_groups`

List all the resource groups for an account.


## Update Resource Group

**PUT** `/accounts/{account_id}/iam/resource_groups/{resource_group_id}`

Modify an existing resource group.


## Resource Group Details

**GET** `/accounts/{account_id}/iam/resource_groups/{resource_group_id}`

Get information about a specific resource group in an account.


## Remove Resource Group

**DELETE** `/accounts/{account_id}/iam/resource_groups/{resource_group_id}`

Remove a resource group from an account.

