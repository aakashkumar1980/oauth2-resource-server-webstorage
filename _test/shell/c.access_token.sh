#!/bin/bash

# NOTE: Please copy the 'code' from the callback URL i.e. http://localhost/oauth2/callback?code=...
AUTHORIZATION_CODE=""
source application.properties

curl --request POST \
  --url "https://${auth0_domain}/oauth/token" \
  --header 'content-type: application/x-www-form-urlencoded' \
  --data-urlencode "grant_type=authorization_code" \
  --data-urlencode "client_id=${client_id}" \
  --data-urlencode "client_secret=${client_secret}" \
  --data-urlencode "audience=${audience}" \
  --data-urlencode "scope=${scope}" \
  --data-urlencode "redirect_uri=${callback_uri}" \
  --data-urlencode "code_verifier=${code_verifier}" \
  --data-urlencode "code=${AUTHORIZATION_CODE}"
 



