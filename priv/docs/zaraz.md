# Zaraz

## Update Zaraz configuration

**PUT** `/zones/{zone_id}/settings/zaraz/config`

Updates Zaraz configuration for a zone.

### Responses

#### 200 Update Zaraz configuration response

> Data is at `body["result"]`

```json
{
  "analytics": {
    "defaultPurpose": "*string*",
    "enabled": "*boolean*",
    "sessionExpTime": "*integer*"
  },
  "consent": {
    "buttonTextTranslations": {
      "accept_all": {},
      "confirm_my_choices": {},
      "reject_all": {}
    },
    "companyEmail": "*string*",
    "companyName": "*string*",
    "companyStreetAddress": "*string*",
    "consentModalIntroHTML": "*string*",
    "consentModalIntroHTMLWithTranslations": {},
    "cookieName": "*string*",
    "customCSS": "*string*",
    "customIntroDisclaimerDismissed": "*boolean*",
    "defaultLanguage": "*string*",
    "enabled": "*boolean*",
    "hideModal": "*boolean*",
    "purposes": {},
    "purposesWithTranslations": {},
    "tcfCompliant": "*boolean*"
  },
  "dataLayer": "*boolean*",
  "debugKey": "*string*",
  "historyChange": "*boolean*",
  "settings": {
    "autoInjectScript": "*boolean*",
    "contextEnricher": {
      "escapedWorkerName": "*string*",
      "workerTag": "*string*"
    },
    "cookieDomain": "*string*",
    "ecommerce": "*boolean*",
    "eventsApiPath": "*string*",
    "hideExternalReferer": "*boolean*",
    "hideIPAddress": "*boolean*",
    "hideQueryParams": "*boolean*",
    "hideUserAgent": "*boolean*",
    "initPath": "*string*",
    "injectIframes": "*boolean*",
    "mcRootPath": "*string*",
    "scriptPath": "*string*",
    "trackPath": "*string*"
  },
  "tools": {},
  "triggers": {},
  "variables": {},
  "zarazVersion": "*integer*"
}
```

#### 4XX Update Zaraz configuration response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Zaraz configuration

**GET** `/zones/{zone_id}/settings/zaraz/config`

Gets latest Zaraz configuration for a zone. It can be preview or published configuration, whichever was the last updated. Secret variables values will not be included.

### Responses

#### 200 Get Zaraz configuration response

> Data is at `body["result"]`

```json
{
  "analytics": {
    "defaultPurpose": "*string*",
    "enabled": "*boolean*",
    "sessionExpTime": "*integer*"
  },
  "consent": {
    "buttonTextTranslations": {
      "accept_all": {},
      "confirm_my_choices": {},
      "reject_all": {}
    },
    "companyEmail": "*string*",
    "companyName": "*string*",
    "companyStreetAddress": "*string*",
    "consentModalIntroHTML": "*string*",
    "consentModalIntroHTMLWithTranslations": {},
    "cookieName": "*string*",
    "customCSS": "*string*",
    "customIntroDisclaimerDismissed": "*boolean*",
    "defaultLanguage": "*string*",
    "enabled": "*boolean*",
    "hideModal": "*boolean*",
    "purposes": {},
    "purposesWithTranslations": {},
    "tcfCompliant": "*boolean*"
  },
  "dataLayer": "*boolean*",
  "debugKey": "*string*",
  "historyChange": "*boolean*",
  "settings": {
    "autoInjectScript": "*boolean*",
    "contextEnricher": {
      "escapedWorkerName": "*string*",
      "workerTag": "*string*"
    },
    "cookieDomain": "*string*",
    "ecommerce": "*boolean*",
    "eventsApiPath": "*string*",
    "hideExternalReferer": "*boolean*",
    "hideIPAddress": "*boolean*",
    "hideQueryParams": "*boolean*",
    "hideUserAgent": "*boolean*",
    "initPath": "*string*",
    "injectIframes": "*boolean*",
    "mcRootPath": "*string*",
    "scriptPath": "*string*",
    "trackPath": "*string*"
  },
  "tools": {},
  "triggers": {},
  "variables": {},
  "zarazVersion": "*integer*"
}
```

#### 4XX Get Zaraz configuration response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get default Zaraz configuration

**GET** `/zones/{zone_id}/settings/zaraz/default`

Gets default Zaraz configuration for a zone.

### Responses

#### 200 Get Zaraz default configuration response

> Data is at `body["result"]`

```json
{
  "analytics": {
    "defaultPurpose": "*string*",
    "enabled": "*boolean*",
    "sessionExpTime": "*integer*"
  },
  "consent": {
    "buttonTextTranslations": {
      "accept_all": {},
      "confirm_my_choices": {},
      "reject_all": {}
    },
    "companyEmail": "*string*",
    "companyName": "*string*",
    "companyStreetAddress": "*string*",
    "consentModalIntroHTML": "*string*",
    "consentModalIntroHTMLWithTranslations": {},
    "cookieName": "*string*",
    "customCSS": "*string*",
    "customIntroDisclaimerDismissed": "*boolean*",
    "defaultLanguage": "*string*",
    "enabled": "*boolean*",
    "hideModal": "*boolean*",
    "purposes": {},
    "purposesWithTranslations": {},
    "tcfCompliant": "*boolean*"
  },
  "dataLayer": "*boolean*",
  "debugKey": "*string*",
  "historyChange": "*boolean*",
  "settings": {
    "autoInjectScript": "*boolean*",
    "contextEnricher": {
      "escapedWorkerName": "*string*",
      "workerTag": "*string*"
    },
    "cookieDomain": "*string*",
    "ecommerce": "*boolean*",
    "eventsApiPath": "*string*",
    "hideExternalReferer": "*boolean*",
    "hideIPAddress": "*boolean*",
    "hideQueryParams": "*boolean*",
    "hideUserAgent": "*boolean*",
    "initPath": "*string*",
    "injectIframes": "*boolean*",
    "mcRootPath": "*string*",
    "scriptPath": "*string*",
    "trackPath": "*string*"
  },
  "tools": {},
  "triggers": {},
  "variables": {},
  "zarazVersion": "*integer*"
}
```

#### 4XX Get Zaraz default configuration response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Export Zaraz configuration

**GET** `/zones/{zone_id}/settings/zaraz/export`

Exports full current published Zaraz configuration for a zone, secret variables included.

### Responses

#### 200 Get Zaraz configuration response

> Data is at `body["result"]`

```json
{
  "analytics": {
    "defaultPurpose": "*string*",
    "enabled": "*boolean*",
    "sessionExpTime": "*integer*"
  },
  "consent": {
    "buttonTextTranslations": {
      "accept_all": {},
      "confirm_my_choices": {},
      "reject_all": {}
    },
    "companyEmail": "*string*",
    "companyName": "*string*",
    "companyStreetAddress": "*string*",
    "consentModalIntroHTML": "*string*",
    "consentModalIntroHTMLWithTranslations": {},
    "cookieName": "*string*",
    "customCSS": "*string*",
    "customIntroDisclaimerDismissed": "*boolean*",
    "defaultLanguage": "*string*",
    "enabled": "*boolean*",
    "hideModal": "*boolean*",
    "purposes": {},
    "purposesWithTranslations": {},
    "tcfCompliant": "*boolean*"
  },
  "dataLayer": "*boolean*",
  "debugKey": "*string*",
  "historyChange": "*boolean*",
  "settings": {
    "autoInjectScript": "*boolean*",
    "contextEnricher": {
      "escapedWorkerName": "*string*",
      "workerTag": "*string*"
    },
    "cookieDomain": "*string*",
    "ecommerce": "*boolean*",
    "eventsApiPath": "*string*",
    "hideExternalReferer": "*boolean*",
    "hideIPAddress": "*boolean*",
    "hideQueryParams": "*boolean*",
    "hideUserAgent": "*boolean*",
    "initPath": "*string*",
    "injectIframes": "*boolean*",
    "mcRootPath": "*string*",
    "scriptPath": "*string*",
    "trackPath": "*string*"
  },
  "tools": {},
  "triggers": {},
  "variables": {},
  "zarazVersion": "*integer*"
}
```

#### 4XX Get Zaraz configuration response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Restore Zaraz historical configuration by ID

**PUT** `/zones/{zone_id}/settings/zaraz/history`

Restores a historical published Zaraz configuration by ID for a zone.

### Responses

#### 200 Restore Zaraz historical configuration by ID response

> Data is at `body["result"]`

```json
{
  "analytics": {
    "defaultPurpose": "*string*",
    "enabled": "*boolean*",
    "sessionExpTime": "*integer*"
  },
  "consent": {
    "buttonTextTranslations": {
      "accept_all": {},
      "confirm_my_choices": {},
      "reject_all": {}
    },
    "companyEmail": "*string*",
    "companyName": "*string*",
    "companyStreetAddress": "*string*",
    "consentModalIntroHTML": "*string*",
    "consentModalIntroHTMLWithTranslations": {},
    "cookieName": "*string*",
    "customCSS": "*string*",
    "customIntroDisclaimerDismissed": "*boolean*",
    "defaultLanguage": "*string*",
    "enabled": "*boolean*",
    "hideModal": "*boolean*",
    "purposes": {},
    "purposesWithTranslations": {},
    "tcfCompliant": "*boolean*"
  },
  "dataLayer": "*boolean*",
  "debugKey": "*string*",
  "historyChange": "*boolean*",
  "settings": {
    "autoInjectScript": "*boolean*",
    "contextEnricher": {
      "escapedWorkerName": "*string*",
      "workerTag": "*string*"
    },
    "cookieDomain": "*string*",
    "ecommerce": "*boolean*",
    "eventsApiPath": "*string*",
    "hideExternalReferer": "*boolean*",
    "hideIPAddress": "*boolean*",
    "hideQueryParams": "*boolean*",
    "hideUserAgent": "*boolean*",
    "initPath": "*string*",
    "injectIframes": "*boolean*",
    "mcRootPath": "*string*",
    "scriptPath": "*string*",
    "trackPath": "*string*"
  },
  "tools": {},
  "triggers": {},
  "variables": {},
  "zarazVersion": "*integer*"
}
```

#### 4XX Restore Zaraz historical configuration by ID failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Zaraz historical configuration records

**GET** `/zones/{zone_id}/settings/zaraz/history`

Lists a history of published Zaraz configuration records for a zone.

### Responses

#### 200 List Zaraz historical configuration records response

> Data is at `body["result"]`

```json
[
  {
    "createdAt": "*string*",
    "description": "*string*",
    "id": "*integer*",
    "updatedAt": "*string*",
    "userId": "*string*"
  }
]
```

#### 4XX List Zaraz historical configuration records failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Zaraz historical configurations by ID(s)

**GET** `/zones/{zone_id}/settings/zaraz/history/configs`

Gets a history of published Zaraz configurations by ID(s) for a zone.

### Responses

#### 200 Get Zaraz historical configurations by ID(s) response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get Zaraz historical configurations by ID(s) failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Publish Zaraz preview configuration

**POST** `/zones/{zone_id}/settings/zaraz/publish`

Publish current Zaraz preview configuration for a zone.

### Responses

#### 200 Update Zaraz workflow response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Update Zaraz workflow response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update Zaraz workflow

**PUT** `/zones/{zone_id}/settings/zaraz/workflow`

Updates Zaraz workflow for a zone.

### Responses

#### 200 Update Zaraz workflow response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Update Zaraz workflow response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Zaraz workflow

**GET** `/zones/{zone_id}/settings/zaraz/workflow`

Gets Zaraz workflow for a zone.

### Responses

#### 200 Get Zaraz workflow response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Get Zaraz workflow response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


