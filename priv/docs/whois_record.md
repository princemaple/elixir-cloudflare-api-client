# WHOIS Record

## Get WHOIS Record

**GET** `/accounts/{account_id}/intel/whois`



### Responses

#### 200 Get WHOIS Record response.

> Data is at `body["result"]`

```json
{
  "found": "*boolean*",
  "registrar_id": "*string*",
  "registrant_fax_ext": "*string*",
  "administrative_name": "*string*",
  "billing_referral_url": "*string*",
  "created_date_raw": "*string*",
  "updated_date_raw": "*string*",
  "billing_postal_code": "*string*",
  "registrar_phone_ext": "*string*",
  "registrar_fax": "*string*",
  "billing_street": "*string*",
  "registrant_id": "*string*",
  "administrative_phone_ext": "*string*",
  "registrar_referral_url": "*string*",
  "registrar_province": "*string*",
  "dnssec": "*boolean*",
  "technical_street": "*string*",
  "administrative_postal_code": "*string*",
  "expiration_date_raw": "*string*",
  "technical_org": "*string*",
  "registrant_postal_code": "*string*",
  "registrar_phone": "*string*",
  "updated_date": "*string*",
  "administrative_referral_url": "*string*",
  "whois_server": "*string*",
  "technical_country": "*string*",
  "registrar_email": "*string*",
  "administrative_org": "*string*",
  "registrant_city": "*string*",
  "billing_id": "*string*",
  "expiration_date": "*string*",
  "billing_email": "*string*",
  "billing_fax": "*string*",
  "billing_phone": "*string*",
  "nameservers": [
    "*string*"
  ],
  "technical_referral_url": "*string*",
  "administrative_id": "*string*",
  "status": [
    "*string*"
  ],
  "punycode": "*string*",
  "administrative_country": "*string*",
  "technical_id": "*string*",
  "administrative_email": "*string*",
  "id": "*string*",
  "registrant_email": "*string*",
  "registrant_name": "*string*",
  "registrar_street": "*string*",
  "registrant_street": "*string*",
  "technical_city": "*string*",
  "technical_phone": "*string*",
  "technical_fax": "*string*",
  "registrant_fax": "*string*",
  "billing_country": "*string*",
  "registrant_org": "*string*",
  "registrant_phone": "*string*",
  "technical_email": "*string*",
  "registrant": "*string*",
  "technical_name": "*string*",
  "billing_phone_ext": "*string*",
  "technical_province": "*string*",
  "extension": "*string*",
  "billing_org": "*string*",
  "registrant_country": "*string*",
  "registrar_org": "*string*",
  "created_date": "*string*",
  "billing_fax_ext": "*string*",
  "registrar_city": "*string*",
  "registrar_country": "*string*",
  "registrant_phone_ext": "*string*",
  "technical_fax_ext": "*string*",
  "billing_province": "*string*",
  "administrative_province": "*string*",
  "billing_city": "*string*",
  "billing_name": "*string*",
  "administrative_phone": "*string*",
  "administrative_fax": "*string*",
  "registrar": "*string*",
  "registrant_referral_url": "*string*",
  "administrative_fax_ext": "*string*",
  "technical_postal_code": "*string*",
  "administrative_street": "*string*",
  "domain": "*string*",
  "registrant_province": "*string*",
  "registrar_postal_code": "*string*",
  "registrar_name": "*string*",
  "administrative_city": "*string*",
  "registrar_fax_ext": "*string*",
  "technical_phone_ext": "*string*"
}
```

#### 4XX Get WHOIS Record response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


