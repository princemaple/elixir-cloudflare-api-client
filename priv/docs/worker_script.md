# Worker Script

## Upload Assets

**POST** `/accounts/{account_id}/workers/assets/upload`

Upload assets ahead of creating a Worker version.  To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.


## List Workers

**GET** `/accounts/{account_id}/workers/scripts`

Fetch a list of uploaded workers.


## Search Workers

**GET** `/accounts/{account_id}/workers/scripts-search`

Search for Workers in an account.


## Upload Worker Module

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}`

Upload a worker module. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.


## Download Worker

**GET** `/accounts/{account_id}/workers/scripts/{script_name}`

Fetch raw script content for your worker. Note this is the original script content, not JSON encoded.


## Delete Worker

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}`

Delete your worker. This call has no response body on a successful delete.


## Create Assets Upload Session

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/assets-upload-session`

Start uploading a collection of assets for use in a Worker version. To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.


## Put script content

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/content`

Put script content without touching config or metadata.


## Get script content

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/content/v2`

Fetch script content only.


## Patch Script Settings

**PATCH** `/accounts/{account_id}/workers/scripts/{script_name}/script-settings`

Patch script-level settings when using [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions). Including but not limited to Logpush and Tail Consumers.


## Get Script Settings

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/script-settings`

Get script-level settings when using [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions). Includes Logpush and Tail Consumers.


## Add script secret

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/secrets`

Add a secret to a script.


## List script secrets

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/secrets`

List secrets bound to a script.


## Get secret binding

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/secrets/{secret_name}`

Get a given secret binding (value omitted) on a script.


## Delete script secret

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/secrets/{secret_name}`

Remove a secret from a script.


## Patch Settings

**PATCH** `/accounts/{account_id}/workers/scripts/{script_name}/settings`

Patch metadata or config, such as bindings or usage model.


## Get Settings

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/settings`

Get metadata and config, such as bindings or usage model.


## Post Worker subdomain

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/subdomain`

Enable or disable the Worker on the workers.dev subdomain.


## Get Worker subdomain

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/subdomain`

Get if the Worker is available on the workers.dev subdomain.


## Delete Worker subdomain

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/subdomain`

Disable all workers.dev subdomains for a Worker.


## Update Usage Model

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/usage-model`

Updates the Usage Model for a given Worker. Requires a Workers Paid subscription.


## Fetch Usage Model

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/usage-model`

Fetches the Usage Model for a given Worker.

