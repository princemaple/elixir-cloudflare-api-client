# Schema Validation

## Upload a schema

**POST** `/zones/{zone_id}/schema_validation/schemas`




## List all uploaded schemas

**GET** `/zones/{zone_id}/schema_validation/schemas`




## List hosts covered by uploaded schemas

**GET** `/zones/{zone_id}/schema_validation/schemas/hosts`




## Edit details of a schema to enable validation

**PATCH** `/zones/{zone_id}/schema_validation/schemas/{schema_id}`




## Get details of a schema

**GET** `/zones/{zone_id}/schema_validation/schemas/{schema_id}`




## Delete a schema

**DELETE** `/zones/{zone_id}/schema_validation/schemas/{schema_id}`




## Retrieve all operations from the schema.

**GET** `/zones/{zone_id}/schema_validation/schemas/{schema_id}/operations`

Retrieves all operations from the schema. Operations that already exist in API Shield Endpoint Management will be returned as full operations.

