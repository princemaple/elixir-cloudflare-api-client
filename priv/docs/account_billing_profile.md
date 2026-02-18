# Account Billing Profile

## Billing Profile Details

**GET** `/accounts/{account_id}/billing/profile`

Gets the current billing profile for the account.

### Responses

#### 200 Billing Profile Details response

> Data is at `body["result"]`

```json
{
  "payment_email": "*string*",
  "payment_nonce": "*string*",
  "vat": "*string*",
  "account_type": "*string*",
  "card_number": "*string*",
  "validation_code": "*string*",
  "primary_email": "*string*",
  "city": "*string*",
  "next_bill_date": "*string*",
  "payment_address2": "*string*",
  "payment_first_name": "*string*",
  "payment_gateway": "*string*",
  "address2": "*string*",
  "payment_country": "*string*",
  "edited_on": "*string*",
  "id": "*string*",
  "payment_address": "*string*",
  "zipcode": "*string*",
  "device_data": "*string*",
  "country": "*string*",
  "address": "*string*",
  "balance": "*string*",
  "enterprise_primary_email": "*string*",
  "company": "*string*",
  "card_expiry_year": "*integer*",
  "last_name": "*string*",
  "enterprise_billing_email": "*string*",
  "state": "*string*",
  "payment_state": "*string*",
  "created_on": "*string*",
  "tax_id_type": "*string*",
  "use_legacy": "*boolean*",
  "telephone": "*string*",
  "payment_last_name": "*string*",
  "card_expiry_month": "*integer*",
  "first_name": "*string*",
  "is_partner": "*boolean*",
  "payment_zipcode": "*string*",
  "payment_city": "*string*"
}
```

#### 4XX Billing Profile Details response failure

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


