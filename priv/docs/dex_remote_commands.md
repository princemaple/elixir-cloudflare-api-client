# DEX Remote Commands

## Create account commands

**POST** `/accounts/{account_id}/dex/commands`

Initiate commands for up to 10 devices per account


## List account commands

**GET** `/accounts/{account_id}/dex/commands`

Retrieves a paginated list of commands issued to devices under the specified account, optionally filtered by time range, device, or other parameters


## List devices eligible for remote captures

**GET** `/accounts/{account_id}/dex/commands/devices`

List devices with WARP client support for remote captures which have been connected in the last 1 hour.


## Returns account commands usage, quota, and reset time

**GET** `/accounts/{account_id}/dex/commands/quota`

Retrieves the current quota usage and limits for device commands within a specific account, including the time when the quota will reset


## Download command output file

**GET** `/accounts/{account_id}/dex/commands/{command_id}/downloads/{filename}`

Downloads artifacts for an executed command. Bulk downloads are not supported

