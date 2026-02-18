# Stream Live Inputs

## Create a live input

**POST** `/accounts/{account_id}/stream/live_inputs`

Creates a live input, and returns credentials that you or your users can use to stream live video to Cloudflare Stream.


## List live inputs

**GET** `/accounts/{account_id}/stream/live_inputs`

Lists the live inputs created for an account. To get the credentials needed to stream to a specific live input, request a single live input.


## Update a live input

**PUT** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}`

Updates a specified live input.


## Retrieve a live input

**GET** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}`

Retrieves details of an existing live input.


## Delete a live input

**DELETE** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}`

Prevents a live input from being streamed to and makes the live input inaccessible to any future API calls.


## Create a new output, connected to a live input

**POST** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs`

Creates a new output that can be used to simulcast or restream live video to other RTMP or SRT destinations. Outputs are always linked to a specific live input — one live input can have many outputs.


## List all outputs associated with a specified live input

**GET** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs`

Retrieves all outputs associated with a specified live input.


## Update an output

**PUT** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs/{output_identifier}`

Updates the state of an output.


## Delete an output

**DELETE** `/accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs/{output_identifier}`

Deletes an output and removes it from the associated live input.

