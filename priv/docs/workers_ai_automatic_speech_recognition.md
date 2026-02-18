# Workers AI Automatic Speech Recognition

## Execute @cf/deepgram/flux model.

**POST** `/accounts/{account_id}/ai/run/@cf/deepgram/flux`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Open Websocket connection with @cf/deepgram/flux model.

**GET** `/accounts/{account_id}/ai/run/@cf/deepgram/flux`



### Responses

#### 101 Returns a websocket connection

```json

```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Execute @cf/deepgram/nova-3 model.

**POST** `/accounts/{account_id}/ai/run/@cf/deepgram/nova-3`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Open Websocket connection with @cf/deepgram/nova-3 model.

**GET** `/accounts/{account_id}/ai/run/@cf/deepgram/nova-3`



### Responses

#### 101 Returns a websocket connection

```json

```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Open Websocket connection with @cf/deepgram/nova-3-internal model.

**GET** `/accounts/{account_id}/ai/run/@cf/deepgram/nova-3-internal`



### Responses

#### 101 Returns a websocket connection

```json

```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Execute @cf/openai/whisper model.

**POST** `/accounts/{account_id}/ai/run/@cf/openai/whisper`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Execute @cf/openai/whisper-large-v3-turbo model.

**POST** `/accounts/{account_id}/ai/run/@cf/openai/whisper-large-v3-turbo`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Execute @cf/openai/whisper-tiny-en model.

**POST** `/accounts/{account_id}/ai/run/@cf/openai/whisper-tiny-en`



### Responses

#### 200 Object with user data.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json
{
  "errors": [
    {
      "code": "*string*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


