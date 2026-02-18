# Magic Connectors

## Add a connector to your account

**POST** `/accounts/{account_id}/magic/connectors`




## List Connectors

**GET** `/accounts/{account_id}/magic/connectors`




## Replace Connector or Re-provision License Key

**PUT** `/accounts/{account_id}/magic/connectors/{connector_id}`




## Edit Connector to update specific properties or Re-provision License Key

**PATCH** `/accounts/{account_id}/magic/connectors/{connector_id}`




## Fetch Connector

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}`




## Remove a connector from your account

**DELETE** `/accounts/{account_id}/magic/connectors/{connector_id}`




## List Events

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events`




## Get latest Events

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events/latest`




## Get Event

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events/{event_t}.{event_n}`




## List Snapshots

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots`




## Get latest Snapshots

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots/latest`




## Get Snapshot

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots/{snapshot_t}`



