# API Shield API Discovery

## Retrieve discovered operations on a zone rendered as OpenAPI schemas

**GET** `/zones/{zone_id}/api_gateway/discovery`

Retrieve the most up to date view of discovered operations, rendered as OpenAPI schemas


## Patch discovered operations

**PATCH** `/zones/{zone_id}/api_gateway/discovery/operations`

Update the `state` on one or more discovered operations


## Retrieve discovered operations on a zone

**GET** `/zones/{zone_id}/api_gateway/discovery/operations`

Retrieve the most up to date view of discovered operations


## Patch discovered operation

**PATCH** `/zones/{zone_id}/api_gateway/discovery/operations/{operation_id}`

Update the `state` on a discovered operation

