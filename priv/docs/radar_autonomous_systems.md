# Radar Autonomous Systems

## List autonomous systems

**GET** `/radar/entities/asns`

Retrieves a list of autonomous systems.


## Get AS details by IP address

**GET** `/radar/entities/asns/ip`

Retrieves the requested autonomous system information based on IP address. Population estimates come from APNIC (refer to https://labs.apnic.net/?p=526).


## Get AS details by ASN

**GET** `/radar/entities/asns/{asn}`

Retrieves the requested autonomous system information. (A confidence level below `5` indicates a low level of confidence in the traffic data - normally this happens because Cloudflare has a small amount of traffic from/to this AS). Population estimates come from APNIC (refer to https://labs.apnic.net/?p=526).


## Get IRR AS-SETs that an AS is a member of

**GET** `/radar/entities/asns/{asn}/as_set`

Retrieves Internet Routing Registry AS-SETs that an AS is a member of.


## Get AS-level relationships by ASN

**GET** `/radar/entities/asns/{asn}/rel`

Retrieves AS-level relationship for given networks.

