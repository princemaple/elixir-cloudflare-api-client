# brapi

## Get HTML content.

**POST** `/accounts/{account_id}/browser-rendering/content`

Fetches rendered HTML content from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.


## Get json.

**POST** `/accounts/{account_id}/browser-rendering/json`

Gets json from a webpage from a provided URL or HTML. Pass `prompt` or `schema` in the body. Control page loading with `gotoOptions` and `waitFor*` options.


## Get Links.

**POST** `/accounts/{account_id}/browser-rendering/links`

Get links from a web page.


## Get markdown.

**POST** `/accounts/{account_id}/browser-rendering/markdown`

Gets markdown of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options.


## Get PDF.

**POST** `/accounts/{account_id}/browser-rendering/pdf`

Fetches rendered PDF from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.


## Scrape elements.

**POST** `/accounts/{account_id}/browser-rendering/scrape`

Get meta attributes like height, width, text and others of selected elements.


## Get screenshot.

**POST** `/accounts/{account_id}/browser-rendering/screenshot`

Takes a screenshot of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.


## Get HTML content and screenshot.

**POST** `/accounts/{account_id}/browser-rendering/snapshot`

Returns the page's HTML content and screenshot. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.

