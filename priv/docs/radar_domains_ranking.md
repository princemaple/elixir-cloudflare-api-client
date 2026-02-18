# Radar Domains Ranking

## Get domain rank details

**GET** `/radar/ranking/domain/{domain}`

Retrieves domain rank details. Cloudflare provides an ordered rank for the top 100 domains, but for the remainder it only provides ranking buckets like top 200 thousand, top one million, etc.. These are available through Radar datasets endpoints.


## Get domains rank time series

**GET** `/radar/ranking/timeseries_groups`

Retrieves domains rank over time.


## Get top or trending domains

**GET** `/radar/ranking/top`

Retrieves the top or trending domains based on their rank. Popular domains are domains of broad appeal based on how people use the Internet. Trending domains are domains that are generating a surge in interest. For more information on top domains, see https://blog.cloudflare.com/radar-domain-rankings/.

