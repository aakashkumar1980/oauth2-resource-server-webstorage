#!/bin/bash

source application.properties
case $AUTH_SERVER_CHOICE in
  1) 
    echo "loading application-auth0.properties file"
    source application-auth0.properties
    ;;
  2) 
    echo "loading application-awscognito.properties file"
    source application-awscognito.properties
    ;;
esac
echo ""

# NOTE: Please copy the 'code' from the previous step of callback URL i.e. http://localhost/oauth2/callback?code=...
AUTHORIZATION_CODE=""
curl --request POST \
  --url "${token_url}" \
  --header 'content-type: application/x-www-form-urlencoded' \
  --data-urlencode "grant_type=authorization_code" \
  --data-urlencode "client_id=${client_id}" \
  --data-urlencode "client_secret=${client_secret}" \
  --data-urlencode "audience=${audience}" \
  --data-urlencode "scope=${scope}" \
  --data-urlencode "redirect_uri=${callback_uri}" \
  --data-urlencode "code_verifier=${code_verifier}" \
  --data-urlencode "code=${AUTHORIZATION_CODE}"





