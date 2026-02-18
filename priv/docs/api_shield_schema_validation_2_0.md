# API Shield Schema Validation 2.0

## Update multiple operation-level schema validation settings

**PATCH** `/zones/{zone_id}/api_gateway/operations/schema_validation`

Updates multiple operation-level schema validation settings on the zone


## Update operation-level schema validation settings

**PUT** `/zones/{zone_id}/api_gateway/operations/{operation_id}/schema_validation`

Updates operation-level schema validation settings on the zone


## Retrieve operation-level schema validation settings

**GET** `/zones/{zone_id}/api_gateway/operations/{operation_id}/schema_validation`

Retrieves operation-level schema validation settings on the zone


## Update zone level schema validation settings

**PUT** `/zones/{zone_id}/api_gateway/settings/schema_validation`

Updates zone level schema validation settings on the zone


## Update zone level schema validation settings

**PATCH** `/zones/{zone_id}/api_gateway/settings/schema_validation`

Updates zone level schema validation settings on the zone


## Retrieve zone level schema validation settings

**GET** `/zones/{zone_id}/api_gateway/settings/schema_validation`

Retrieves zone level schema validation settings currently set on the zone


## Upload a schema to a zone

**POST** `/zones/{zone_id}/api_gateway/user_schemas`




## Retrieve information about all schemas on a zone

**GET** `/zones/{zone_id}/api_gateway/user_schemas`




## Retrieve schema hosts in a zone

**GET** `/zones/{zone_id}/api_gateway/user_schemas/hosts`




## Enable validation for a schema

**PATCH** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}`




## Retrieve information about a specific schema on a zone

**GET** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}`




## Delete a schema

**DELETE** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}`




## Retrieve all operations from a schema.

**GET** `/zones/{zone_id}/api_gateway/user_schemas/{schema_id}/operations`

Retrieves all operations from the schema. Operations that already exist in API Shield Endpoint Management will be returned as full operations.

