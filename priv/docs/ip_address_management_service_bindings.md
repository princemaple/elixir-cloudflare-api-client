# IP Address Management Service Bindings

## Create Service Binding

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings`

Creates a new Service Binding, routing traffic to IPs within the given CIDR to a service running on Cloudflare's network.
**NOTE:** The first Service Binding created for an IP Prefix must exactly match the IP Prefix's CIDR. Subsequent Service Bindings may be created with a more-specific CIDR. Refer to the  [Service Bindings Documentation](https://developers.cloudflare.com/byoip/service-bindings/) for compatibility details.


### Responses

#### 201 The created Service Binding

> Data is at `body["result"]`

```json
{
  "cidr": "*string*",
  "id": "*string*",
  "provisioning": {
    "state": "*string*"
  },
  "service_id": "*string*",
  "service_name": "*string*"
}
```

#### 4XX Create Service Binding response failure

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



## List Service Bindings

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings`

List the Cloudflare services this prefix is currently bound to. Traffic sent to an address within an IP prefix will be routed to the Cloudflare service of the most-specific Service Binding matching the address.
**Example:** binding `192.0.2.0/24` to Cloudflare Magic Transit and `192.0.2.1/32` to the Cloudflare CDN would route traffic for `192.0.2.1` to the CDN, and traffic for all other IPs in the prefix to Cloudflare Magic Transit.


### Responses

#### 200 Service Bindings attached to the Prefix

> Data is at `body["result"]`

```json
[
  {
    "cidr": "*string*",
    "id": "*string*",
    "provisioning": {
      "state": "*string*"
    },
    "service_id": "*string*",
    "service_name": "*string*"
  }
]
```

#### 4XX List Service Bindings response failure

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



## Get Service Binding

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings/{binding_id}`

Fetch a single Service Binding

### Responses

#### 200 The Service Binding with the requested ID

> Data is at `body["result"]`

```json
{
  "cidr": "*string*",
  "id": "*string*",
  "provisioning": {
    "state": "*string*"
  },
  "service_id": "*string*",
  "service_name": "*string*"
}
```

#### 4XX Get Service Binding response failure

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



## Delete Service Binding

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings/{binding_id}`

Delete a Service Binding

### Responses

#### 200 Service Binding deleted

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete Service Binding response failure

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



## List Services

**GET** `/accounts/{account_id}/addressing/services`

Bring-Your-Own IP (BYOIP) prefixes onboarded to Cloudflare must be bound to a service running on the Cloudflare network to enable a Cloudflare product on the IP addresses. This endpoint can be used as a reference of available services on the Cloudflare network, and their service IDs.


### Responses

#### 200 Service names and IDs

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Services response failure

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


