# Cloudflare Tunnel Configuration

## Put configuration

**PUT** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/configurations`

Adds or updates the configuration for a remotely-managed tunnel.

### Responses

#### 200 Put configuration response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "config": {
    "ingress": [
      {
        "hostname": null,
        "originRequest": null,
        "path": null,
        "service": null
      }
    ],
    "originRequest": {
      "access": {
        "audTag": null,
        "required": null,
        "teamName": null
      },
      "caPool": "*string*",
      "connectTimeout": "*integer*",
      "disableChunkedEncoding": "*boolean*",
      "http2Origin": "*boolean*",
      "httpHostHeader": "*string*",
      "keepAliveConnections": "*integer*",
      "keepAliveTimeout": "*integer*",
      "matchSNItoHost": "*boolean*",
      "noHappyEyeballs": "*boolean*",
      "noTLSVerify": "*boolean*",
      "originServerName": "*string*",
      "proxyType": "*string*",
      "tcpKeepAlive": "*integer*",
      "tlsTimeout": "*integer*"
    },
    "warp-routing": {
      "enabled": "*boolean*"
    }
  },
  "created_at": "*string*",
  "source": "*string*",
  "tunnel_id": "*string*",
  "version": "*integer*"
}
```

#### 4XX Put configuration response failure

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



## Get configuration

**GET** `/accounts/{account_id}/cfd_tunnel/{tunnel_id}/configurations`

Gets the configuration for a remotely-managed tunnel

### Responses

#### 200 Get configuration response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "config": {
    "ingress": [
      {
        "hostname": null,
        "originRequest": null,
        "path": null,
        "service": null
      }
    ],
    "originRequest": {
      "access": {
        "audTag": null,
        "required": null,
        "teamName": null
      },
      "caPool": "*string*",
      "connectTimeout": "*integer*",
      "disableChunkedEncoding": "*boolean*",
      "http2Origin": "*boolean*",
      "httpHostHeader": "*string*",
      "keepAliveConnections": "*integer*",
      "keepAliveTimeout": "*integer*",
      "matchSNItoHost": "*boolean*",
      "noHappyEyeballs": "*boolean*",
      "noTLSVerify": "*boolean*",
      "originServerName": "*string*",
      "proxyType": "*string*",
      "tcpKeepAlive": "*integer*",
      "tlsTimeout": "*integer*"
    },
    "warp-routing": {
      "enabled": "*boolean*"
    }
  },
  "created_at": "*string*",
  "source": "*string*",
  "tunnel_id": "*string*",
  "version": "*integer*"
}
```

#### 4XX Get configuration response failure

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


