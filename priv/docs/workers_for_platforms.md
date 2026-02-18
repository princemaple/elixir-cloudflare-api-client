# Workers for Platforms

## Create dispatch namespace

**POST** `/accounts/{account_id}/workers/dispatch/namespaces`

Create a new Workers for Platforms namespace.


## List dispatch namespaces

**GET** `/accounts/{account_id}/workers/dispatch/namespaces`

Fetch a list of Workers for Platforms namespaces.


## Update dispatch namespace

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Update a Workers for Platforms namespace.


## Patch dispatch namespace

**PATCH** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Patch a Workers for Platforms namespace. Omitted fields are left unchanged.


## Get dispatch namespace

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Get a Workers for Platforms namespace.


## Delete dispatch namespace

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Delete a Workers for Platforms namespace.


## List Scripts in Namespace

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`

Fetch a list of scripts uploaded to a Workers for Platforms namespace.


## Delete Scripts in Namespace

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`

Delete multiple scripts from a Workers for Platforms namespace based on optional tag filters.


## Upload Worker Module

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`

Upload a worker module to a Workers for Platforms namespace. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.


## Worker Details

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`

Fetch information about a script uploaded to a Workers for Platforms namespace.


## Delete Worker

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`

Delete a worker from a Workers for Platforms namespace. This call has no response body on a successful delete.


## Create Assets Upload Session

**POST** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/assets-upload-session`

Start uploading a collection of assets for use in a Worker version. To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.


## Get Script Bindings

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/bindings`

Fetch script bindings from a script uploaded to a Workers for Platforms namespace.


## Put Script Content

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`

Put script content for a script uploaded to a Workers for Platforms namespace.


## Get Script Content

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`

Fetch script content from a script uploaded to a Workers for Platforms namespace.


## Add script secret

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`

Add a secret to a script uploaded to a Workers for Platforms namespace.


## List Script Secrets

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`

List secrets bound to a script uploaded to a Workers for Platforms namespace.


## Get secret binding

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`

Get a given secret binding (value omitted) on a script uploaded to a Workers for Platforms namespace.


## Delete script secret

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`

Remove a secret from a script uploaded to a Workers for Platforms namespace.


## Patch Script Settings

**PATCH** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`

Patch script metadata, such as bindings.


## Get Script Settings

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`

Get script settings from a script uploaded to a Workers for Platforms namespace.


## Put Script Tags

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`

Put script tags for a script uploaded to a Workers for Platforms namespace.


## Get Script Tags

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`

Fetch tags from a script uploaded to a Workers for Platforms namespace.


## Put Script Tag

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`

Put a single tag on a script uploaded to a Workers for Platforms namespace.


## Delete Script Tag

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`

Delete script tag for a script uploaded to a Workers for Platforms namespace.

