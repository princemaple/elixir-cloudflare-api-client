# Spectrum Applications

## Create Spectrum application using a name for the origin

**POST** `/zones/{zone_id}/spectrum/apps`

Creates a new Spectrum application from a configuration using a name for the origin.


## List Spectrum applications

**GET** `/zones/{zone_id}/spectrum/apps`

Retrieves a list of currently existing Spectrum applications inside a zone.


## Update Spectrum application configuration using a name for the origin

**PUT** `/zones/{zone_id}/spectrum/apps/{app_id}`

Updates a previously existing application's configuration that uses a name for the origin.


## Get Spectrum application configuration

**GET** `/zones/{zone_id}/spectrum/apps/{app_id}`

Gets the application configuration of a specific application inside a zone.


## Delete Spectrum application

**DELETE** `/zones/{zone_id}/spectrum/apps/{app_id}`

Deletes a previously existing application.

