# Spectrum Applications

You can extend the power of Cloudflare's DDoS, TLS, and IP Firewall to your other TCP-based services.

## List Spectrum Applications

`GET` Retrieve a list of currently existing Spectrum Applications inside a zone.

> GET zones/:zone/spectrum/apps

**Permission needed:** `None`

Available in:




## Create Spectrum Application

`POST` Create a new Spectrum Application from a configuration.

> POST zones/:zone/spectrum/apps

**Permission needed:** `None`

Available in:




## Get Spectrum Application Configuration

`GET` Get the application configuration of a specific application inside a zone.

> GET zones/:zone/spectrum/apps/:app_id

**Permission needed:** `None`

Available in:




## Update Spectrum Application Configuration

`PUT` Update a previously existing application's configuration.

> PUT zones/:zone/spectrum/apps/:app_id

**Permission needed:** `None`

Available in:




## Delete Spectrum Application

`DELETE` Delete a previously existing application.

> DELETE zones/:zone/spectrum/apps/:app_id

**Permission needed:** `None`

Available in:



