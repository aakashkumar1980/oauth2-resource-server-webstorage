#!/bin/bash

# code verifier
CODE_VERIFIER=$(openssl rand -base64 32 | tr -d "=+/" | cut -c1-128)
echo "code_verifier: $CODE_VERIFIER"
# code challenge
CODE_CHALLENGE=$(echo -n "$CODE_VERIFIER" | openssl dgst -binary -sha256 | openssl base64 | tr -d "=+/" | cut -c1-128)
echo "code_challenge: $CODE_CHALLENGE"

# append to application.properties file so that it can be used in the next step
echo "code_verifier=$CODE_VERIFIER" >> application.properties
echo "code_challenge=$CODE_CHALLENGE" >> application.properties
echo "code_challenge_method=S256" >> application.properties



