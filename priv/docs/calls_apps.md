# Calls Apps

## Create a new app

**POST** `/accounts/{account_id}/calls/apps`

Creates a new Cloudflare calls app. An app is an unique enviroment where each Session can access all Tracks within the app.


## List apps

**GET** `/accounts/{account_id}/calls/apps`

Lists all apps in the Cloudflare account


## Edit app details

**PUT** `/accounts/{account_id}/calls/apps/{app_id}`

Edit details for a single app.


## Retrieve app details

**GET** `/accounts/{account_id}/calls/apps/{app_id}`

Fetches details for a single Calls app.


## Delete app

**DELETE** `/accounts/{account_id}/calls/apps/{app_id}`

Deletes an app from Cloudflare Calls

