# Cloudflare Images Variants

## Create a variant

**POST** `/accounts/{account_id}/images/v1/variants`

Specify variants that allow you to resize images for different use cases.


## List variants

**GET** `/accounts/{account_id}/images/v1/variants`

Lists existing variants.


## Update a variant

**PATCH** `/accounts/{account_id}/images/v1/variants/{variant_id}`

Updating a variant purges the cache for all images associated with the variant.


## Variant details

**GET** `/accounts/{account_id}/images/v1/variants/{variant_id}`

Fetch details for a single variant.


## Delete a variant

**DELETE** `/accounts/{account_id}/images/v1/variants/{variant_id}`

Deleting a variant purges the cache for all images associated with the variant.

