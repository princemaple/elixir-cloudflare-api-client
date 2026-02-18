# Worker Versions

## Upload Version

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/versions`

Upload a Worker Version without deploying to Cloudflare's network. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.


## List Versions

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/versions`

List of Worker Versions. The first version in the list is the latest version.


## Get Version Detail

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/versions/{version_id}`



