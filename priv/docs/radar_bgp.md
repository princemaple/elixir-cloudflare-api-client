# Radar BGP

## Get BGP hijack events

**GET** `/radar/bgp/hijacks/events`

Retrieves the BGP hijack events.


## Get announced IP address space time series

**GET** `/radar/bgp/ips/timeseries`

Retrieves time series data for the announced IP space count, represented as the number of IPv4 /24s and IPv6 /48s, for a given ASN.


## Get BGP route leak events

**GET** `/radar/bgp/leaks/events`

Retrieves the BGP route leak events.


## List ASes from global routing tables

**GET** `/radar/bgp/routes/ases`

Retrieves all ASes in the current global routing tables with routing statistics.


## Get Multi-Origin AS (MOAS) prefixes

**GET** `/radar/bgp/routes/moas`

Retrieves all Multi-Origin AS (MOAS) prefixes in the global routing tables.


## Get prefix-to-ASN mapping

**GET** `/radar/bgp/routes/pfx2as`

Retrieves the prefix-to-ASN mapping from global routing tables.


## Get real-time BGP routes for a prefix

**GET** `/radar/bgp/routes/realtime`

Retrieves real-time BGP routes for a prefix, using public real-time data collectors (RouteViews and RIPE RIS).


## Get BGP routing table stats 

**GET** `/radar/bgp/routes/stats`

Retrieves the BGP routing table stats.


## Get ASPA changes over time

**GET** `/radar/bgp/rpki/aspa/changes`

Retrieves ASPA (Autonomous System Provider Authorization) changes over time. Returns daily aggregated changes including additions, removals, and modifications of ASPA objects.


## Get ASPA objects snapshot

**GET** `/radar/bgp/rpki/aspa/snapshot`

Retrieves current or historical ASPA (Autonomous System Provider Authorization) objects. ASPA objects define which ASNs are authorized upstream providers for a customer ASN.


## Get ASPA count time series

**GET** `/radar/bgp/rpki/aspa/timeseries`

Retrieves ASPA (Autonomous System Provider Authorization) object count over time. Supports filtering by RIR or location (country code) to generate multiple named series. If no RIR or location filter is specified, returns total count.


## Get BGP time series

**GET** `/radar/bgp/timeseries`

Retrieves BGP updates over time. When requesting updates for an autonomous system, only BGP updates of type announcement are returned.


## Get top ASes by BGP updates

**GET** `/radar/bgp/top/ases`

Retrieves the top autonomous systems by BGP updates (announcements only).


## Get top ASes by prefix count

**GET** `/radar/bgp/top/ases/prefixes`

Retrieves the full list of autonomous systems on the global routing table ordered by announced prefixes count. The data comes from public BGP MRT data archives and updates every 2 hours.


## Get top prefixes by BGP updates

**GET** `/radar/bgp/top/prefixes`

Retrieves the top network prefixes by BGP updates.

