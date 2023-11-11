#!/bin/bash

echo "Please login to the Auth0 server to get the authorization code. Manually copy the code and save it for the next step."
source application.properties

xdg-open "https://${auth0_domain}/authorize?\
response_type=code&\
client_id=${client_id}&\
audience=${audience}&\
scope=${scope}&\
code_challenge=${code_challenge}&\
code_challenge_method=S256&\
redirect_uri=${callback_uri}" &
