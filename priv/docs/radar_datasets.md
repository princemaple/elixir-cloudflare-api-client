# Radar Datasets

## List datasets

**GET** `/radar/datasets`

Retrieves a list of datasets.


## Get dataset download URL

**POST** `/radar/datasets/download`

Retrieves an URL to download a single dataset.


## Get dataset CSV stream

**GET** `/radar/datasets/{alias}`

Retrieves the CSV content of a given dataset by alias or ID. When getting the content by alias the latest dataset is returned, optionally filtered by the latest available at a given date.

